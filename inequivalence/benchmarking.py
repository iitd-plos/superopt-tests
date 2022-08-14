from io import TextIOWrapper
import sys
import subprocess
import shlex
import itertools
import time
from joblib import Parallel, delayed
import pickle
import argparse
import glob

# Contains benchmarking information
# FORMAT: each line represents one function
## {fname} {lib_1} {lib_2} . . .
# input_file = sys.argv[1]

FLAGS="correctness_covers,correlate"
FAILSET_PRUNE=-1
FAILSET_SORT="next-cross"
FAILSET_MU=4
UNROLL_FACTOR=8
CE_BOUND=20
SCRIPT_NAME = "benchmarking.sh"
TIMEOUT=60*60*2 # 2 hours
NJOBS=16

STAT_FILE = "stat.log"

def set_to_string(s: set):
    return ','.join(s)

# Maintains equivalence classes for a benchmark
# Also maintains Inequivalence classes -- helps in pruning the benchmarking space
class equivalence_classes:
    def __init__(self, fname: str, libraries: "list[str]") -> None:
        self.fname = fname
         # set of libraries to be considered for this benchmark
        self.libraries = set(libraries)
        self.parent = {lib: lib for lib in libraries}
        # dictionary from string to a set of leaders, denoting the classes which are inequivalent
        self.inequivalent_sets = {lib: set() for lib in libraries}

    def get_leader(self, lib: str) -> str:
        parent = lib
        while parent != self.parent[parent]:
            parent = self.parent[parent]
        return parent

    def merge(self, lib_1, lib_2):
        u = self.get_leader(lib_1)
        v = self.get_leader(lib_2)
        if u != v:
            self.parent[v] = u
        self.inequivalent_sets[u] = self.inequivalent_sets[u].union(self.inequivalent_sets[v])
        
        # update the leaders in the inequivalent sets
        for lib in self.inequivalent_sets:
            if v in self.inequivalent_sets[lib]:
                self.inequivalent_sets[lib].discard(v)
                self.inequivalent_sets[lib].add(u)
        
        self.sync_inequivalent_sets()
    
    def get_classes(self):
        ret = dict()
        for lib in self.parent:
            leader = self.get_leader(lib)
            if leader not in ret:
                ret[leader] = set()
            ret[leader].add(lib)
        return ret
    
    def sync_inequivalent_sets(self):
        ret = self.get_classes()
        for leader in ret:
            for lib in ret[leader]:
                self.inequivalent_sets[lib] = self.inequivalent_sets[lib].union(self.inequivalent_sets[leader])
    
    def add_inequivalent(self, lib_1, lib_2):
        u = self.get_leader(lib_1)
        v = self.get_leader(lib_2)
        assert u != v
        self.inequivalent_sets[lib_1].add(v)
        self.inequivalent_sets[lib_2].add(u)
        self.sync_inequivalent_sets()
    
    def print(self, log_file: TextIOWrapper):
        classes = self.get_classes()
        log_file.write(f'Benchmark = {self.fname}\n')
        log_file.write(f'Eq Classes:\n')
        for leader in classes:
            log_file.write(f'\t{classes[leader]}\n')
        log_file.write(f'Inequivalence Classes:\n')
        for lib in self.inequivalent_sets:
            log_file.write(f'\t{lib} inequivalent with the classes {self.inequivalent_sets[lib]}\n')
    
    def dot_dump(self):
        node_string = f'\tnodesep=0.5;\n\tranksep=0.35;\n'
        classes = self.get_classes()
        for leader in classes:
            elems = classes[leader]
            node_string = node_string + '\t"' + set_to_string(elems) + '";\n'
        leaders = list(classes.keys())
        all_edges = list(itertools.combinations(leaders, 2))
        inequivalent_edges = []

        for lib in self.inequivalent_sets:
            lib_leader = self.get_leader(lib)
            for ineq_libs in self.inequivalent_sets[lib]:
                if (lib_leader, ineq_libs) in all_edges:
                    if (lib_leader, ineq_libs) not in inequivalent_edges:
                        inequivalent_edges.append((lib_leader, ineq_libs))
                else:
                    if (ineq_libs, lib_leader) not in inequivalent_edges:
                        inequivalent_edges.append((ineq_libs, lib_leader))

        all_edges = set(all_edges)
        inequivalent_edges = set(inequivalent_edges)
        assert(inequivalent_edges.issubset(all_edges))
        fail_edges = all_edges.difference(inequivalent_edges)
        inequivalent_edges = [f'\t\t"{set_to_string(classes[n1])}" -- "{set_to_string(classes[n2])}"\n' for (n1, n2) in inequivalent_edges]
        fail_edges = [f'\t\t"{set_to_string(classes[n1])}" -- "{set_to_string(classes[n2])}"\n' for (n1, n2) in fail_edges]

        ineq_string = f'\tsubgraph inequivalence\n\t{{\n\t\tedge [dir=none, color=blue]\n{"".join(inequivalent_edges)}\t}}\n'
        fail_string = f'\tsubgraph fail\n\t{{\n\t\tedge [dir=none, color=red, style=dashed]\n{"".join(fail_edges)}\t}}\n'

        s = f'graph {{\n{node_string}{ineq_string}{fail_string}}}'
        return s

# generates a bash script containing all the pairs of benchmarks to run
def gen_script(input_file):
    script = open(SCRIPT_NAME, 'w')
    script.write('#!/bin/bash\n')
    script.write('set -x\n')
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    for line in lines:
        strings = line.split()
        fname = strings[0]
        libraries = strings[1:]
        for pair in itertools.permutations(libraries, 2):
            l1, l2 = pair
            # command = f'/usr/bin/time -ao logs/timing.log -f "{fname}\t{l1}\t{l2}\t%e" eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} benchmarks/{fname}_{l1}.c benchmarks/{fname}_{l2}.c > logs/{fname}_{l1}_{l2}.proof 2>&1'
            command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={UNROLL_FACTOR} --ce_bound={CE_BOUND} benchmarks/{fname}_{l1}.c benchmarks/{fname}_{l2}.c > logs/{fname}_{l1}_{l2}.proof 2>&1'
            script.write(command + "\n")
    script.close()
    file.close()


def run_ineq_checker(fname: str, src_lib: str, dst_lib: str, log_file:TextIOWrapper, stat_file: TextIOWrapper, classes: equivalence_classes):
    u = classes.get_leader(src_lib)
    v = classes.get_leader(dst_lib)
    if u == v:
        # They already lie in the same equivalence class, no need to run the tool
        return False
    else:
        if v in classes.inequivalent_sets[u] or u in classes.inequivalent_sets[v]:
            # They are already inequivalent, no need to run the tool
            return False
    RETRY = False
    out_file = open(f'logs/{fname}_{src_lib}_{dst_lib}.proof', 'w')
    command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={UNROLL_FACTOR} --ce_bound={CE_BOUND} benchmarks/{fname}_{src_lib}.c benchmarks/{fname}_{dst_lib}.c'
    tokens = shlex.split(command)
    try:
        log_file.write(f'\tRunning the tool for benchmark {fname} with src={src_lib}, dst={dst_lib}\n')
        start_time = time.perf_counter()
        p = subprocess.run(tokens, stdout=out_file, stderr=out_file, timeout=TIMEOUT)
        end_time = time.perf_counter()
        if p.returncode == 0:
            log_file.write(f'\t\tProved {fname} to be equivalent for {src_lib}, {dst_lib}.\n')
            classes.merge(src_lib, dst_lib)
        elif p.returncode == 2:
            log_file.write(f'\t\tProved {fname} to be inequivalent for {src_lib}, {dst_lib}.\n')
            classes.add_inequivalent(src_lib, dst_lib)
        else:
            log_file.write(f'\t\tFound errcode {p.returncode} for {fname}, {src_lib}, {dst_lib}.\n')
            RETRY = True
        stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\t{end_time-start_time}\t{p.returncode}\n')
    except subprocess.TimeoutExpired:
            log_file.write(f'\t\tTimeout for benchmark {fname} with src={src_lib}, dst={dst_lib}\n')
            RETRY = True
            stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\tTIMEOUT\n')
    finally:
            out_file.close()
            stat_file.flush()
            log_file.flush()
    return RETRY

def run(line, i):
    strings = line.split()
    fname = strings[0]
    libraries = strings[1:]
    classes = equivalence_classes(fname, libraries)
    stat_file = open(f'stats/{fname}_{i}_{STAT_FILE}', 'w')
    log_file = open(f'stats/{fname}_{i}.log', 'w')
    log_file.write(f'Running benchmarks for {fname}\n')
    for pair in itertools.combinations(libraries, 2):
        l1, l2 = pair
        if run_ineq_checker(fname, l1, l2, log_file, stat_file, classes):
            # run the tool by switching the src and dst
            run_ineq_checker(fname, l2, l1, log_file, stat_file, classes)
    log_file.write(f'Ran all experiments for {fname}\n')
    classes.print(log_file)
    stat_file.close()
    log_file.close()
    with open(f'eq_classes/{fname}_{i}_classes.pkl', 'wb') as f:
        pickle.dump(classes, f)

def run_experiments(input_file):
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    file.close()

    Parallel(n_jobs=NJOBS)(delayed(run)(line, i) for i, line in enumerate(lines))

def analysis(input_file):
    pickled_files = glob.glob('eq_classes/*_classes.pkl')
    for file in pickled_files:
        with open(file, 'rb') as f:
            classes = pickle.load(f)
            dot_dump = classes.dot_dump()
            dot_file = open(f'{file[:-12]}_classes.dot', 'w')
            dot_file.write(f'{dot_dump}\n')
            dot_file.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Inequivalence Checking Benchmarking')
    parser.add_argument('--gen_script', action='store_true', help='Generates a brute force script for benchmarking')
    parser.add_argument('--run_exp', action='store_true', help='Runs the experiments while keeping track of equivalence classes')
    parser.add_argument('--analysis', action='store_true', help='Takes the computed classes and generates eq_classes')
    parser.add_argument('--input_file', action='store', type=str, help='File containing the benchmarks to run', default='')
    args = parser.parse_args()
    assert(args.input_file != '')
    assert(args.gen_script ^ args.run_exp ^ args.analysis) and not (args.gen_script and args.run_exp and args.analysis), f'Exactly one of the modes should be enabled'
    if args.gen_script:
        gen_script(args.input_file)
    elif args.run_exp:
        run_experiments(args.input_file)
    else:
        analysis(args.input_file)