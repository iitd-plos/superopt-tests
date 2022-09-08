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
from equiv_classes import equivalence_classes

# Contains benchmarking information
# FORMAT: each line represents one function
## {fname} {lib_1} {lib_2} . . .
# input_file = sys.argv[1]

FLAGS="correctness_covers,correlate"
FAILSET_PRUNE=-1
FAILSET_SORT="next-cross"
FAILSET_MU=8
UNROLL_FACTOR=8
CE_BOUND=20
SCRIPT_NAME = "benchmarking.sh"
TIMEOUT=60*60*1.5 # 1.5 hour
NJOBS=5

STAT_FILE = "stat.log"

# Generates a brute force script for benchmarking
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
    strings = line.split(',')
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

# Runs the experiments while keeping track of equivalence classes
def run_experiments(input_file):
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    file.close()

    Parallel(n_jobs=min(NJOBS, len(lines)))(delayed(run)(line, i) for i, line in enumerate(lines))

# Takes the computed classes and generates eq_classes
def analysis(input_file):
    pickled_files = glob.glob('eq_classes/*_classes.pkl')
    for file in pickled_files:
        with open(file, 'rb') as f:
            classes = pickle.load(f)
            dot_dump = classes.dot_dump(file[11:-12])
            dot_file = open(f'graphviz/{file[11:-12]}_classes.dot', 'w')
            dot_file.write(f'{dot_dump}\n')
            dot_file.close()

def run_specific_helper(line: str):
    params = line.split(',')
    fname, src_lib, dst_lib, unroll_factor, failset_mu = params
    out_file = open(f'logs_spec/{fname}_{src_lib}_{dst_lib}_{unroll_factor}_{failset_mu}.proof', 'w')
    command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={failset_mu} --unroll-factor={unroll_factor} --ce_bound={CE_BOUND} benchmarks/{fname}_{src_lib}.c benchmarks/{fname}_{dst_lib}.c'
    tokens = shlex.split(command)
    p = subprocess.run(tokens, stdout=out_file, stderr=out_file, timeout=TIMEOUT)
    out_file.close()

def run_specific(input_file):
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = lines[1:]
    lines = [line.strip() for line in lines]
    file.close()

    Parallel(n_jobs=5)(delayed(run_specific_helper)(line) for line in lines)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Inequivalence Checking Benchmarking')
    parser.add_argument('--mode', action='store', type=str, help='Denotes the function of the script. Options = [gen_script|run_all|analysis|run_spec]', default='')
    parser.add_argument('--input_file', action='store', type=str, help='File containing the benchmarks to run', default='')
    args = parser.parse_args()
    assert(args.input_file != '')
    assert(args.mode != '')
    assert args.mode == 'gen_script' or args.mode == 'run_all' or args.mode == 'analysis' or args.mode == 'run_spec', f'Invalid Mode'
    if args.mode == 'gen_script':
        gen_script(args.input_file)
    elif args.mode == 'run_all':
        run_experiments(args.input_file)
    elif args.mode == 'analysis':
        analysis(args.input_file)
    elif args.mode == 'run_spec':
        run_specific(args.input_file)