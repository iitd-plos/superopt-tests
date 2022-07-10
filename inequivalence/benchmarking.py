from io import TextIOWrapper
import sys
import subprocess
import shlex
import itertools
import time

# Contains benchmarking information
# FORMAT: each line represents one function
## {fname} {lib_1} {lib_2} . . .
input_file = sys.argv[1]

FLAGS="correctness_covers,correlate"
FAILSET_PRUNE=-1
FAILSET_SORT="next-cross"
FAILSET_MU=2
SCRIPT_NAME = "benchmarking.sh"
TIMEOUT=1200

STAT_FILE = "stats.log"

# Maintains equivalence classes for a benchmarks
# Also maintains Inequivalence classes -- helps in pruning the benchmarking space
class equivalence_classes:
    def __init__(self, fname: str, libraries: "list[str]") -> None:
        self.fname = fname
         # set of libraries to be considered for this benchmark
        self.libraries = set(libraries)
        self.parent = {lib: lib for lib in libraries}
        # dictionary from string to a set of leaders, denoting the classes which are equivalent
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
    
    def print(self):
        classes = self.get_classes()
        print(f'Benchmark = {self.fname}')
        print(f'Eq Classes:')
        for leader in classes:
            print(f'\t{classes[leader]}')
        print(f'Inequivalence Classes:')
        for lib in self.inequivalent_sets:
            print(f'\t{lib} inequivalent with the classes {self.inequivalent_sets[lib]}')

# generates a bash script containing all the pairs of benchmarks to run
def gen_script():
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
            command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} benchmarks/{fname}_{l1}.c benchmarks/{fname}_{l2}.c > logs/{fname}_{l1}_{l2}.proof 2>&1'
            script.write(command + "\n")
    script.close()
    file.close()


def run_ineq_checker(fname: str, src_lib: str, dst_lib: str, stat_file: TextIOWrapper, classes: equivalence_classes):
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
    command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} benchmarks/{fname}_{src_lib}.c benchmarks/{fname}_{dst_lib}.c'
    tokens = shlex.split(command)
    try:
        print(f'\tRunning the tool for benchmark {fname} with src={src_lib}, dst={dst_lib}')
        start_time = time.perf_counter()
        p = subprocess.run(tokens, stdout=out_file, stderr=out_file, timeout=TIMEOUT)
        end_time = time.perf_counter()
        if p.returncode == 0:
            print(f'\t\tProved {fname} to be equivalent for {src_lib}, {dst_lib}.')
            classes.merge(src_lib, dst_lib)
        elif p.returncode == 2:
            print(f'\t\tProved {fname} to be inequivalent for {src_lib}, {dst_lib}.')
            classes.add_inequivalent(src_lib, dst_lib)
        else:
            print(f'\t\tFound errcode {p.returncode} for {fname}, {src_lib}, {dst_lib}.')
            RETRY = True
        stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\t{end_time-start_time}\t{p.returncode}\n')
    except subprocess.TimeoutExpired:
            print(f'\t\tTimeout for benchmark {fname} with src={src_lib}, dst={dst_lib}')
            RETRY = True
            stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\tTIMEOUT\n')
    finally:
            out_file.close()
            stat_file.flush()
    return RETRY

def run_experiments():
    file = open(input_file, 'r')
    stat_file = open(STAT_FILE, 'w')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    for line in lines:
        strings = line.split()
        fname = strings[0]
        libraries = strings[1:]
        classes = equivalence_classes(fname, libraries)
        print(f'Running benchmarks for {fname}')
        for pair in itertools.combinations(libraries, 2):
            l1, l2 = pair
            if run_ineq_checker(fname, l1, l2, stat_file, classes):
                # run the tool by switching the src and dst
                run_ineq_checker(fname, l2, l1, stat_file, classes)
        print(f'Ran all experiments for {fname}')
        classes.print()

    file.close()
    stat_file.close()


if __name__ == "__main__":
    # gen_script()
    run_experiments()