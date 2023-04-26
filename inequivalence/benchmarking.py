from io import TextIOWrapper
import os, signal
import subprocess
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

FLAGS="correctness_covers,correlate,invariants_map=2"
FAILSET_PRUNE=-1
FAILSET_SORT="next-cross"
FAILSET_MU=16
UNROLL_FACTOR_MIN=1
UNROLL_FACTOR_MAX=64
UNROLL_FACTOR_RATIO=2
CE_BOUND=22
SCRIPT_NAME = "benchmarking.sh"
TIMEOUT=45*60
NJOBS=30
VMEM_LIMIT=32*1024*1024 # 32GB
NUM_CHUNKS=1

USE_ASSUMES = False

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
            command = f'eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={UNROLL_FACTOR_MAX} --ce_bound={CE_BOUND} benchmarks/{fname}_{l1}.c benchmarks/{fname}_{l2}.c > logs/{fname}_{l1}_{l2}.proof 2>&1'
            script.write(command + "\n")
    script.close()
    file.close()

# Generates a combined file consisting of both the src, dst programs and the generated counterexample
def write_ce_file(fname: str, src_lib: str, dst_lib: str):
    src_data, dst_data, xml_data = '', '', ''
    with open(get_bench_path(fname, src_lib), 'r') as fp:
        src_data = fp.read()
    
    with open(get_bench_path(fname, dst_lib), 'r') as fp:
        dst_data = fp.read()
    
    if not USE_ASSUMES:
        xml_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}.xml'
    else:
        xml_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}-assumes.xml'
    
    with open(xml_file, 'r') as fp:
        xml = fp.read()
        xml = '<eqchecker>' + xml
    
    root = ET.fromstring(xml)
    for neighbor in root.iter('MSG'):
        xml_data = neighbor.text

    merge_data = src_data + '\n\n' + dst_data + '\n\n' + xml_data
    
    if not USE_ASSUMES:
        ce_out_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}.ce'
    else:
        ce_out_file = f'counterexamples/{fname}-{src_lib}-{dst_lib}-assumes.ce'
    with open(ce_out_file, 'w') as fp:
        fp.write(merge_data)

# .S files could use preprocessor directives. If they do, then eq32 currently classifies those as C source files
# A hack is to preprocess the files on the fly through gcc and then run the tool
def preprocess_asm(fname: str, lib: str):
    lib_prefix = lib.split('.')[0]
    command = f'gcc -E -P benchmarks/Assembly/{fname}/{fname}_{lib} > benchmarks/Assembly/{fname}/{fname}_{lib_prefix}_tmp.S' 
    result = subprocess.run(command, shell=True, check=False, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    if result.returncode != 0:
        assert False, f'Preprocessing for {fname}_{lib} failed'
    return f'benchmarks/Assembly/{fname}/{fname}_{lib_prefix}_tmp.S'

def get_bench_path(fname: str, lib: str) -> str:
    extension = lib.split('.')[-1]
    if extension == 'c':
        return f'benchmarks/C/{fname}/{fname}_{lib}'
    elif extension == 's':
        return f'benchmarks/Assembly/{fname}/{fname}_{lib}'
    elif extension == 'S':
        return preprocess_asm(fname, lib)
    else:
        assert False, f'Invalid file extension .{extension}'

def is_c_file(file_name: str) -> bool:
    return file_name.split('.')[-1] == 'c'
 
def run_ineq_checker(fname: str, src_lib: str, dst_lib: str, log_file:TextIOWrapper, classes: equivalence_classes, unroll):
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
        command = f'ulimit -v {VMEM_LIMIT}; eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={unroll} --ce_bound={CE_BOUND} --xml-output=counterexamples/{fname}-{src_lib}-{dst_lib}.xml {get_bench_path(fname, src_lib)} {get_bench_path(fname, dst_lib)}'
    else:
        src_lib_ = src_lib.split('.')[0]
        if not is_c_file(src_lib):
            assert False, f'{src_lib} is not a c file, cannot use assumes'
        command = f'ulimit -v {VMEM_LIMIT}; eq32 --dyn-debug={FLAGS} --failset-prune={FAILSET_PRUNE} --failset-sort={FAILSET_SORT} --failset-mu={FAILSET_MU} --unroll-factor={unroll} --ce_bound={CE_BOUND} --xml-output=counterexamples/{fname}-{src_lib}-{dst_lib}-assumes.xml --assume=assumes/{fname}-{src_lib_}.assumes {get_bench_path(fname, src_lib)} {get_bench_path(fname, dst_lib)}'
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
        log_file.write(f'\tTime Taken = {end_time-start_time}, unroll-factor={unroll}\n')
        classes.add_run_info(fname, src_lib, dst_lib, unroll, p.returncode, end_time-start_time, False)
    except subprocess.TimeoutExpired:
        os.killpg(os.getpgid(p.pid), signal.SIGTERM)
        log_file.write(f'\t\tTimeout for benchmark {fname} with src={src_lib}, dst={dst_lib}\n')
        RETRY = True
        TIMEOUT_OCCURED = True
        log_file.write(f'\tTimeout occurred\n')
        classes.add_run_info(fname, src_lib, dst_lib, unroll, p.returncode, None, True)
    finally:
        out_file.close()
        log_file.flush()
    return RETRY, TIMEOUT_OCCURED

def run_benchmark(strings: str, tag: str, classes: equivalence_classes):
    # strings = [s.strip() for s in line.split(',')]
    fname = strings[0]
    libraries = strings[1:]
    # classes = equivalence_classes(fname, libraries)
    log_file_name = ''
    if not USE_ASSUMES:
        log_file_name = f'stats/{fname}-{tag}.log'
    else:
        log_file_name = f'stats/{fname}-{tag}-assumes.log'
    log_file = open(log_file_name, 'w')
    log_file.write(f'Running benchmarks for {fname}\n')
    for pair in itertools.combinations(libraries, 2):
        l1, l2 = pair
        if (l1, l2) in classes.cache:
            continue
        unroll = UNROLL_FACTOR_MIN
        while unroll <= UNROLL_FACTOR_MAX:
            retry, _ = run_ineq_checker(fname, l1, l2, log_file, classes, unroll)
            if not retry:
                break
            retry, _ = run_ineq_checker(fname, l2, l1, log_file, classes, unroll)
            if not retry:
                break
            unroll *= UNROLL_FACTOR_RATIO
        classes.add_cache(l1, l2)
    log_file.write(f'Ran all experiments for {fname}\n')
    classes.print(log_file)
    log_file.close()
    
    return classes

def split(a, n):
    k, m = divmod(len(a), n)
    return (a[i*k+min(i, m):(i+1)*k+min(i+1, m)] for i in range(n))

def divide_conquer(line: str, tag: str, num_chunks):
    strings = [s.strip() for s in line.split(',')]
    fname = strings[0]
    libraries = strings[1:]

    eq_class_file = ''
    if not USE_ASSUMES:
        eq_class_file = f'eq_classes/{fname}-{tag}-classes.pkl'
    else:
        eq_class_file = f'eq_classes/{fname}-{tag}-assumes-classes.pkl'

    split_classes = len(libraries) > 2 and num_chunks != 1
    classes = None
    
    if os.path.isfile(eq_class_file):
        # Load the pickled equivalence_classes
        split_classes = False
        with open(eq_class_file, 'rb') as f:
            classes: equivalence_classes = pickle.load(f)
            # The internal cache will make sure that we only run the tool for new pairs
            classes.add_new_libraries(libraries)
    
    if split_classes:
        # Split libraries into parts, run each chunk in parallel and then merge the results
        num_chunks = min(num_chunks, len(libraries))
        chunks = split(libraries, num_chunks)
        # for each chunk in chunks, run the eq_checker, get the classes, merge them, and rerun the eq_checker
        all_classes = Parallel(n_jobs=num_chunks)(delayed(run_benchmark)([fname]+chunk, tag+'-'+str(i), equivalence_classes(fname, chunk)) for i, chunk in enumerate(chunks))

        classes = merge_all_classes(all_classes)
    else:
        classes = equivalence_classes(fname, libraries) if classes is None else classes
    
    classes = run_benchmark(strings, tag, classes)

    with open(eq_class_file, 'wb') as f:
        pickle.dump(classes, f)

    stat_file_name = ''
    if not USE_ASSUMES:
        stat_file_name = f'stats/{fname}-{tag}-stats.csv'
    else:
        stat_file_name = f'stats/{fname}-{tag}-assumes-stats.csv'
    
    with open(stat_file_name, 'w') as f:
        for info in classes.get_runs():
            f.write(f'{info.to_string()}\n')

    return [run for run in classes.get_runs() if run.is_ineq()]

# Runs the experiments while keeping track of equivalence classes
def run_experiments(input_file):
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    file.close()

    inequivalences = Parallel(n_jobs=min(NJOBS, len(lines)))(delayed(divide_conquer)(line, str(i), NUM_CHUNKS) for i, line in enumerate(lines))

    ret = []
    for ineq in inequivalences:
        ret = ret + ineq
    
    ineq_file = f'stats/ineq-{input_file}'
    with open(ineq_file, 'w') as f:
        for info in ret:
            f.write(f'{info.to_string()}\n')

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
                classes: equivalence_classes = pickle.load(f)
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
    stats = glob.glob('stats/*-stats.csv')
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
        if 'assumes' in file:
            continue
        with open(file, 'r') as fp:
            lines = fp.readlines()
            for line in lines:
                toks = line.split(',')
                if len(toks) == 5:
                    # TIMEOUT case
                    NTIMEOUTS += 1
                elif len(toks) == 6:
                    # FORMAT: {fname},{src},{dst},{unroll},{result},{time}
                    if toks[-2] == 'ToolResult.EQUIV':
                        completion_times.append(float(toks[-1]))
                        eq_times.append(float(toks[-1]))
                    elif toks[-2] == 'ToolResult.INEQ':
                        completion_times.append(float(toks[-1]))
                        ineq_times.append(float(toks[-1]))
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
                            print(f'Number of Failed CGs for {toks[0]}-{toks[1]}-{toks[2]}-{toks[3]} = {N_FAILED_CGS}')
                            print(f'Inequivalence found at mu = {FINAL_MU} at CG {INEQ_CG}')
                            ranking_ratio = INEQ_CG / N_FAILED_CGS
                            ranking_ratios.append(ranking_ratio)
                            ineq_loop_bound.append(FINAL_MU)
                    elif toks[-2] == 'ToolResult.FAIL':
                        completion_times.append(float(toks[-1]))
                        failure_times.append(float(toks[-1]))
                    else:
                        err_times.append(float(toks[-1]))
                else:
                    print(f'WARN: tokens = {toks}')
    print(f'NTIMEOUTS = {NTIMEOUTS}')
    plot_hist(completion_times, 'Completion_Times')
    plot_hist(eq_times, 'EquivalenceTimes')
    plot_hist(ineq_times, 'InequivalenceTimes')
    plot_hist(failure_times, 'FailureTimes')
    plot_hist(err_times, 'ErrorTimes') # Includes assertion failures and memory errors
    plot_hist(ranking_ratios, 'RankingRatio')
    plot_hist(ineq_loop_bound, 'InequivalenceLoopBound')
    
def parse_xml_test(xml_file):
    with open(xml_file, 'r') as fp:
        xml = fp.read()
    xml = '<eqchecker>' + xml
    root = ET.fromstring(xml)
    for neighbor in root.iter('MSG'):
        xml_data = neighbor.text
    print(xml_data)
    
def update_eq_classes():
    pickled_files = glob.glob('eq_classes/*-classes.pkl')
    pickled_files.sort()
    
    for file in pickled_files:
        with open(file, 'rb') as fp:
            classes: equivalence_classes = pickle.load(fp)
            def add_extension(lib: str) -> str:
                if len(lib.split('.')) == 1:
                    return lib + '.c'
                else:
                    return lib
            classes.update_libraries(add_extension)
        with open(file, 'wb') as fp:
            pickle.dump(classes, fp)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Inequivalence Checking Benchmarking')
    parser.add_argument('--mode', action='store', type=str, help='Denotes the function of the script. Options = [gen_script|run_all|analysis|graph_gen|xml_parse|update_eq_classes]', default='')
    parser.add_argument('--input_file', action='store', type=str, help='File containing the benchmarks to run', default='')
    parser.add_argument('--failset_mu', action='store', type=int, help='Denotes the mu to be used in inequivalence checking', default=FAILSET_MU)
    parser.add_argument('--unroll_factor', action='store', type=int, default=UNROLL_FACTOR_MAX)
    parser.add_argument('--ce_bound', action='store', type=int, help='Sets a bound on the counter examples to be generated', default=CE_BOUND)
    parser.add_argument('--timeout', action='store', type=int, help='Timeout for each run (in seconds)', default=TIMEOUT)
    parser.add_argument('--njobs', action='store', type=int, default=NJOBS)
    parser.add_argument('--assumes', action='store_true')
    parser.add_argument('--num_chunks', action='store', type=int, help='Number of chunks into which each experiment is divided into', default=NUM_CHUNKS)
    args = parser.parse_args()
    assert(args.mode != '')
    assert args.mode == 'gen_script' or args.mode == 'run_all' or args.mode == 'analysis' or args.mode == 'graph_gen' or args.mode == 'xml_parse' or args.mode == 'update_eq_classes', f'Invalid Mode'
    FAILSET_MU = args.failset_mu
    UNROLL_FACTOR_MAX = args.unroll_factor
    CE_BOUND = args.ce_bound
    TIMEOUT = args.timeout
    NJOBS = args.njobs
    USE_ASSUMES = args.assumes
    NUM_CHUNKS = args.num_chunks
    print(f'My pid is {os.getpid()}, pgid is {os.getpgid(0)}')
    if args.mode == 'gen_script':
        gen_script(args.input_file)
    elif args.mode == 'run_all':
        run_experiments(args.input_file)
    elif args.mode == 'analysis':
        analysis()
    elif args.mode == 'graph_gen':
        graph_gen()
    elif args.mode == 'xml_parse':
        parse_xml_test(args.input_file)
    elif args.mode == 'update_eq_classes':
        update_eq_classes()