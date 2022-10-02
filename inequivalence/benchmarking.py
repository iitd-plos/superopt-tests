from io import TextIOWrapper
import os, signal
import subprocess
import shlex
import itertools
import time
from joblib import Parallel, delayed
import pickle
import argparse
import glob
from equiv_classes import equivalence_classes
import glob
import matplotlib.pyplot as plt

# Contains benchmarking information
# FORMAT: each line represents one function
## {fname},{lib_1},{lib_2} . . .
# input_file = sys.argv[1]

FLAGS="correctness_covers,correlate"
FAILSET_PRUNE=-1
FAILSET_SORT="next-cross"
FAILSET_MU=16
UNROLL_FACTOR=64
CE_BOUND=20
SCRIPT_NAME = "benchmarking.sh"
TIMEOUT=60*60*1 # 1 hour
NJOBS=25
NJOBS_SPEC=20
VMEM_LIMIT=50*1024*1024 # 50GB

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

def write_ce_file(fname: str, src_lib: str, dst_lib: str):
    src_data, dst_data, xml_data = '', '', ''
    with open(f'benchmarks/{fname}_{src_lib}.c', 'r') as fp:
        src_data = fp.read()
    
    with open(f'benchmarks/{fname}_{dst_lib}.c', 'r') as fp:
        dst_data = fp.read()
    
    with open(f'counterexamples/{fname}_{src_lib}_{dst_lib}.xml') as fp:
        xml_data = fp.read()

    merge_data = src_data + '\n\n' + dst_data + '\n\n' + xml_data
    
    with open(f'counterexamples/{fname}_{src_lib}_{dst_lib}.ce', 'w') as fp:
        fp.write(merge_data)

def run_ineq_checker(fname: str, src_lib: str, dst_lib: str, log_file:TextIOWrapper, stat_file: TextIOWrapper, classes: equivalence_classes, unroll=UNROLL_FACTOR):
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
    command = f'ulimit -v {VMEM_LIMIT}; eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={unroll} --ce_bound={CE_BOUND} --xml-output=counterexamples/{fname}_{src_lib}_{dst_lib}.xml benchmarks/{fname}_{src_lib}.c benchmarks/{fname}_{dst_lib}.c'
    # tokens = shlex.split(command)
    p = None
    try:
        log_file.write(f'\tRunning the tool for benchmark {fname} with src={src_lib}, dst={dst_lib}, with unroll_factor={unroll}\n')
        start_time = time.perf_counter()
        p = subprocess.Popen(command, stdout=out_file, stderr=out_file, shell=True, preexec_fn=os.setsid)
        p.wait(TIMEOUT)
        end_time = time.perf_counter()
        if p.returncode == 0:
            log_file.write(f'\t\tProved {fname} to be equivalent for {src_lib}, {dst_lib}.\n')
            classes.merge(src_lib, dst_lib)
        elif p.returncode == 2:
            log_file.write(f'\t\tProved {fname} to be inequivalent for {src_lib}, {dst_lib}.\n')
            classes.add_inequivalent(src_lib, dst_lib)
            write_ce_file(fname, src_lib, dst_lib)
        else:
            log_file.write(f'\t\tFound errcode {p.returncode} for {fname}, {src_lib}, {dst_lib}.\n')
            RETRY = True
        stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\t{end_time-start_time}\t{unroll}\t{p.returncode}\n')
    except subprocess.TimeoutExpired:
        os.killpg(os.getpgid(p.pid), signal.SIGTERM)
        log_file.write(f'\t\tTimeout for benchmark {fname} with src={src_lib}, dst={dst_lib}\n')
        RETRY = True
        stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\t{unroll}\tTIMEOUT\n')
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
        unroll = min(8, UNROLL_FACTOR)
        while unroll <= UNROLL_FACTOR:
            if run_ineq_checker(fname, l1, l2, log_file, stat_file, classes, unroll):
                # run the tool by switching the src and dst
                if run_ineq_checker(fname, l2, l1, log_file, stat_file, classes, unroll):
                    pass
                else:
                    break
            else:
                break
            unroll *= 2
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

def func(fname: str, src_lib: str, dst_lib: str, unroll_factor: int, failset_mu: int):
    out_file = open(f'logs_spec/{fname}_{src_lib}_{dst_lib}_{unroll_factor}_{failset_mu}.proof', 'w')
    command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={failset_mu} --unroll-factor={unroll_factor} --ce_bound={CE_BOUND} benchmarks/{fname}_{src_lib}.c benchmarks/{fname}_{dst_lib}.c'
    tokens = shlex.split(command)
    try:
        p = subprocess.run(tokens, stdout=out_file, stderr=out_file, timeout=TIMEOUT)
        out_file.close()
        return p.returncode == 0 or p.returncode == 2
    except subprocess.TimeoutExpired:
        out_file.close()
        return False

def run_specific_helper(line: str):
    params = line.split(',')
    fname, src_lib, dst_lib, unroll_factor, failset_mu = params
    unroll_factor = int(unroll_factor)
    failset_mu = int(failset_mu)
    unroll = min(16, unroll_factor)
    while unroll <= unroll_factor:
        b = func(fname, src_lib, dst_lib, unroll, failset_mu)
        if not b:
            b = func(fname, dst_lib, src_lib, unroll, failset_mu)
            if b:
                return
        else:
            return
        unroll *= 2

def run_specific(input_file):
    global TIMEOUT
    TIMEOUT = 60*60*2.5
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = lines[1:]
    lines = [line.strip() for line in lines]
    file.close()

    Parallel(n_jobs=NJOBS_SPEC)(delayed(run_specific_helper)(line) for line in lines)

def plot_hist(times, title, xlabel='Time (in seconds)'):
    plt.rcParams.update({'figure.figsize':(7,5), 'figure.dpi':100})

    plt.hist(times, bins=50)
    plt.gca().set(title=f'{title}', ylabel='Frequency', xlabel=xlabel)
    plt.savefig(f'plots/{title}.png')
    plt.clf()

def graph_gen():
    stats = glob.glob('stats/*_stat.log')
    stats.sort()
    NTIMEOUTS = 0
    completion_times = []
    eq_times = []
    ineq_times = []
    failure_times = []
    err_times = []
    ranking_ratios = []
    ineq_loop_bound = []
    for file in stats:
        with open(file, 'r') as fp:
            lines = fp.readlines()
            for line in lines:
                toks = line.split()
                # print(toks)
                if len(toks) == 5:
                    # TIMEOUT case
                    NTIMEOUTS += 1
                elif len(toks) == 6:
                    # FORMAT: {fname} {src} {dst} {time} {unroll} {retcode}
                    if toks[-1] == '0':
                        completion_times.append(float(toks[3]))
                        eq_times.append(float(toks[3]))
                    elif toks[-1] == '2':
                        completion_times.append(float(toks[3]))
                        ineq_times.append(float(toks[3]))
                        with open(f'logs/{toks[0]}_{toks[1]}_{toks[2]}.proof', 'r') as ld:
                            logs = ld.readlines()
                            N_FAILED_CGS = 0
                            FINAL_MU = 0
                            INEQ_CG = 0
                            for log_line in logs:
                                if 'm_ls.size()' in log_line:
                                    N_FAILED_CGS = int(log_line.split()[-1])
                                elif 'computing inequivalence at mu' in log_line:
                                    FINAL_MU = int(log_line.split()[-1])
                                elif 'computing correctness cover' in log_line:
                                    INEQ_CG = int(log_line.split()[-1])
                            print(f'Number of Failed CGs for {toks[0]}_{toks[1]}_{toks[2]}_{toks[4]} = {N_FAILED_CGS}')
                            print(f'Inequivalence found at mu = {FINAL_MU} at CG {INEQ_CG}')
                            ranking_ratio = INEQ_CG / N_FAILED_CGS
                            ranking_ratios.append(ranking_ratio)
                            ineq_loop_bound.append(FINAL_MU)
                    elif toks[-1] == '1':
                        completion_times.append(float(toks[3]))
                        failure_times.append(float(toks[3]))
                    else:
                        err_times.append(float(toks[3]))
                else:
                    print(f'WARN: toks = {toks}')
    print(f'NTIMEOUTS = {NTIMEOUTS}')
    plot_hist(completion_times, 'Completion_Times')
    plot_hist(eq_times, 'EquivalenceTimes')
    plot_hist(ineq_times, 'InequivalenceTimes')
    plot_hist(failure_times, 'FailureTimes')
    plot_hist(err_times, 'ErrorTimes') # Includes assertion failures and memory errors
    plot_hist(ranking_ratios, 'RankingRatio')
    plot_hist(ineq_loop_bound, 'InequivalenceLoopBound')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Inequivalence Checking Benchmarking')
    parser.add_argument('--mode', action='store', type=str, help='Denotes the function of the script. Options = [gen_script|run_all|analysis|run_spec|graph_gen]', default='')
    parser.add_argument('--input_file', action='store', type=str, help='File containing the benchmarks to run', default='')
    parser.add_argument('--failset_mu', action='store', type=int, help='Denotes the mu to be used in inequivalence checking', default=FAILSET_MU)
    parser.add_argument('--unroll_factor', action='store', type=int, default=UNROLL_FACTOR)
    args = parser.parse_args()
    assert(args.input_file != '')
    assert(args.mode != '')
    assert args.mode == 'gen_script' or args.mode == 'run_all' or args.mode == 'analysis' or args.mode == 'run_spec' or args.mode == 'graph_gen', f'Invalid Mode'
    FAILSET_MU = args.failset_mu
    UNROLL_FACTOR = args.unroll_factor
    if args.mode == 'gen_script':
        gen_script(args.input_file)
    elif args.mode == 'run_all':
        run_experiments(args.input_file)
    elif args.mode == 'analysis':
        analysis(args.input_file)
    elif args.mode == 'run_spec':
        run_specific(args.input_file)
    elif args.mode == 'graph_gen':
        graph_gen()