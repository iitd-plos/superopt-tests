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
from equiv_classes import equivalence_classes, merge_all_classes
import glob
import matplotlib.pyplot as plt
import xml.etree.ElementTree as ET

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
NJOBS=30
VMEM_LIMIT=33*1024*1024 # 33GB

USE_ASSUMES = False

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

# Generates a combined file consisting of both the src, dst programs and the generated counterexample
def write_ce_file(fname: str, src_lib: str, dst_lib: str):
    src_data, dst_data, xml_data = '', '', ''
    with open(f'benchmarks/C/{fname}/{fname}_{src_lib}.c', 'r') as fp:
        src_data = fp.read()
    
    with open(f'benchmarks/C/{fname}/{fname}_{dst_lib}.c', 'r') as fp:
        dst_data = fp.read()
    
    if not USE_ASSUMES:
        xml_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}.xml'
    else:
        xml_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}-assumes.xml'
    tree = ET.parse(xml_file)
    root = tree.getroot()
    for neighbor in root.iter('inequivalence_cond_counterexample'):
        xml_data = neighbor.text

    merge_data = src_data + '\n\n' + dst_data + '\n\n' + xml_data
    
    if not USE_ASSUMES:
        ce_out_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}.ce'
    else:
        ce_out_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}-assumes.ce'
    with open(ce_out_file, 'w') as fp:
        fp.write(merge_data)

def run_ineq_checker(fname: str, src_lib: str, dst_lib: str, log_file:TextIOWrapper, stat_file: TextIOWrapper, classes: equivalence_classes, unroll=UNROLL_FACTOR):
    u = classes.get_leader(src_lib)
    v = classes.get_leader(dst_lib)
    if u == v:
        # They already lie in the same equivalence class, no need to run the tool
        return False, False
    else:
        if v in classes.inequivalent_sets[u] or u in classes.inequivalent_sets[v]:
            # They are already inequivalent, no need to run the tool
            return False, False
    RETRY = False
    TIMEOUT_OCCURED = False
    if not USE_ASSUMES:
        out_file = open(f'logs/{fname}-{src_lib}-{dst_lib}.proof', 'w')
    else:
        out_file = open(f'logs/{fname}-{src_lib}-{dst_lib}-assumes.proof', 'w')
    if not USE_ASSUMES:
        command = f'ulimit -v {VMEM_LIMIT}; eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={unroll} --ce_bound={CE_BOUND} --xml-output=counterexamples/{fname}-{src_lib}-{dst_lib}.xml benchmarks/C/{fname}/{fname}_{src_lib}.c benchmarks/C/{fname}/{fname}_{dst_lib}.c'
    else:
        command = f'ulimit -v {VMEM_LIMIT}; eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={unroll} --ce_bound={CE_BOUND} --xml-output=counterexamples/{fname}-{src_lib}-{dst_lib}-assumes.xml --assume=assumes/{fname}-{src_lib}.assumes benchmarks/C/{fname}/{fname}_{src_lib}.c benchmarks/C/{fname}/{fname}_{dst_lib}.c'
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
        TIMEOUT_OCCURED = True
        stat_file.write(f'{fname}\t{src_lib}\t{dst_lib}\t{unroll}\tTIMEOUT\n')
    finally:
        out_file.close()
        stat_file.flush()
        log_file.flush()
    return RETRY, TIMEOUT_OCCURED

def run_benchmark(strings: str, tag: str, classes: equivalence_classes):
    # strings = [s.strip() for s in line.split(',')]
    fname = strings[0]
    libraries = strings[1:]
    # classes = equivalence_classes(fname, libraries)
    stat_file_name, log_file_name = '', ''
    if not USE_ASSUMES:
        stat_file_name = f'stats/{fname}-{tag}-{STAT_FILE}'
        log_file_name = f'stats/{fname}-{tag}.log'
    else:
        stat_file_name = f'stats/{fname}-{tag}-assumes-{STAT_FILE}'
        log_file_name = f'stats/{fname}-{tag}-assumes.log'
    stat_file = open(stat_file_name, 'w')
    log_file = open(log_file_name, 'w')
    log_file.write(f'Running benchmarks for {fname}\n')
    for pair in itertools.combinations(libraries, 2):
        l1, l2 = pair
        if (l1, l2) in classes.cache:
            continue
        unroll = min(8, UNROLL_FACTOR)
        found = False
        run_fwd, run_bwd = True, True
        while unroll <= UNROLL_FACTOR and not found and (run_fwd or run_bwd):
            if run_fwd and not found:
                retry, timeout_fwd = run_ineq_checker(fname, l1, l2, log_file, stat_file, classes, unroll)
                if timeout_fwd:
                    run_fwd = False
                else:
                    if not retry:
                        break
            if run_bwd and not found:
                retry, timeout_bwd = run_ineq_checker(fname, l2, l1, log_file, stat_file, classes, unroll)
                if timeout_bwd:
                    run_bwd = False
                else:
                    if not retry:
                        break
            unroll *= 2
        classes.add_cache(l1, l2)
    log_file.write(f'Ran all experiments for {fname}\n')
    classes.print(log_file)
    stat_file.close()
    log_file.close()
    
    return classes

def split(a, n):
    k, m = divmod(len(a), n)
    return (a[i*k+min(i, m):(i+1)*k+min(i+1, m)] for i in range(n))

def divide_conquer(line: str, tag: str, num_chunks=3):
    strings = [s.strip() for s in line.split(',')]
    fname = strings[0]
    libraries = strings[1:]

    eq_class_file = ''
    if not USE_ASSUMES:
        eq_class_file = f'eq_classes/{fname}-{tag}-classes.pkl'
    else:
        eq_class_file = f'eq_classes/{fname}-{tag}-assumes-classes.pkl'

    if os.path.isfile(eq_class_file):
        # The experiment has been run already, no need to run again
        return

    if len(libraries) > 2:
        # Split Libraries into parts
        num_chunks = min(num_chunks, len(libraries))
        chunks = split(libraries, num_chunks)
        # for each chunk in chunks, run the eq_checker, get the classes, merge them, and rerun the eq_checker
        all_classes = Parallel(n_jobs=num_chunks)(delayed(run_benchmark)([fname]+chunk, tag+'-'+str(i), equivalence_classes(fname, chunk)) for i, chunk in enumerate(chunks))

        classes = merge_all_classes(all_classes)
    else:
        classes = equivalence_classes(fname, libraries)
    
    classes = run_benchmark(strings, tag, classes)

    with open(eq_class_file, 'wb') as f:
        pickle.dump(classes, f)

# Runs the experiments while keeping track of equivalence classes
def run_experiments(input_file):
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    file.close()

    Parallel(n_jobs=min(NJOBS, len(lines)))(delayed(divide_conquer)(line, str(i)) for i, line in enumerate(lines))

# Takes the computed classes and generates the classes in dot format
def analysis():
    pickled_files = glob.glob('eq_classes/*-classes.pkl')
    pickled_files.sort()
    groups = dict()
    for file in pickled_files:
        toks = file.split('-')
        fname = toks[0].split('/')[1]
        if toks[-2] == 'assumes':
            fname += '-assumes'
        if fname not in groups:
            groups[fname] = []
        groups[fname].append(file)
    
    for fname, files in groups.items():
        node_str, ineq_str, fail_str = '', '', ''
        for file in files:
            with open(file, 'rb') as f:
                classes = pickle.load(f)
                dot_dump = classes.dot_dump(file[11:-12])
                node_str += dot_dump[0]
                ineq_str += dot_dump[1]
                fail_str += dot_dump[2]
        node_str = f'\tnodesep=0.5;\n\tranksep=0.35;\n\tlabelloc="t"\n\tlabel="{fname}"\n{node_str}'
        ineq_str = f'\tsubgraph inequivalence\n\t{{\n\t\tedge [dir=none, color=blue]\n{ineq_str}\t}}\n'
        fail_str = f'\tsubgraph fail\n\t{{\n\t\tedge [dir=none, color=red, style=dashed]\n{fail_str}\t}}\n'
        dot_dump = f'graph {{\n{node_str}{ineq_str}{fail_str}}}'
        dot_file = open(f'graphviz/{fname}_classes.dot', 'w')
        dot_file.write(f'{dot_dump}\n')
        dot_file.close()

def plot_hist(times, title, xlabel='Time (in seconds)'):
    plt.rcParams.update({'figure.figsize':(7,5), 'figure.dpi':100})

    plt.hist(times, bins=50)
    plt.gca().set(title=f'{title}', ylabel='Frequency', xlabel=xlabel)
    plt.savefig(f'plots/{title}.png')
    plt.clf()

# Analyses the logs to generate statistics
def graph_gen():
    stats = glob.glob('stats/*-stat.log')
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
                        with open(f'logs/{toks[0]}-{toks[1]}-{toks[2]}.proof', 'r') as ld:
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
                            print(f'Number of Failed CGs for {toks[0]}-{toks[1]}-{toks[2]}-{toks[4]} = {N_FAILED_CGS}')
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
    parser.add_argument('--mode', action='store', type=str, help='Denotes the function of the script. Options = [gen_script|run_all|analysis|graph_gen]', default='')
    parser.add_argument('--input_file', action='store', type=str, help='File containing the benchmarks to run', default='')
    parser.add_argument('--failset_mu', action='store', type=int, help='Denotes the mu to be used in inequivalence checking', default=FAILSET_MU)
    parser.add_argument('--unroll_factor', action='store', type=int, default=UNROLL_FACTOR)
    parser.add_argument('--ce_bound', action='store', type=int, help='Sets a bound on the counter examples to be generated', default=CE_BOUND)
    parser.add_argument('--timeout', action='store', type=int, help='Timeout for each run (in seconds)', default=TIMEOUT)
    parser.add_argument('--njobs', action='store', type=int, default=NJOBS)
    parser.add_argument('--assumes', action='store_true')
    args = parser.parse_args()
    assert(args.mode != '')
    assert args.mode == 'gen_script' or args.mode == 'run_all' or args.mode == 'analysis' or args.mode == 'graph_gen', f'Invalid Mode'
    FAILSET_MU = args.failset_mu
    UNROLL_FACTOR = args.unroll_factor
    CE_BOUND = args.ce_bound
    TIMEOUT = args.timeout
    NJOBS = args.njobs
    USE_ASSUMES = args.assumes
    print(f'My pid is {os.getpid()}, pgid is {os.getpgid(0)}')
    if args.mode == 'gen_script':
        assert(args.input_file != '')
        gen_script(args.input_file)
    elif args.mode == 'run_all':
        assert(args.input_file != '')
        run_experiments(args.input_file)
    elif args.mode == 'analysis':
        analysis()
    elif args.mode == 'graph_gen':
        graph_gen()