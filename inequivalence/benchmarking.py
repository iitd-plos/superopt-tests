from io import TextIOWrapper
import os, signal
import subprocess
import itertools
import time
from joblib import Parallel, delayed
import pickle
import argparse
import glob
from equiv_classes import equivalence_classes, merge_all_classes, ToolResult, run_info
import glob
import matplotlib.pyplot as plt
import xml.etree.ElementTree as ET
from typing import *

# Contains benchmarking information
# FORMAT: each line represents one function
## {fname},{lib_1}.c,{lib_2}.S . . .

RUN_STATUS_FILE = 'eqcheck.runstatus'
class RunConfig():
    def __init__(self,
                 input_file: str,
                 output_dir: str,
                 failset_prune: int,
                 failset_sort: str,
                 loop_bound: int,
                 unroll_factor_min: int,
                 unroll_factor_max: int,
                 unroll_factor_ratio: int,
                 ce_bound: int,
                 timeout: int,
                 njobs: int,
                 vmem_limit: int,
                 num_chunks: int,
                 use_assumes: bool,
                 ineq_individual_tfgs: bool,
                 disable_inequivalence: bool,
                 debug_flags: str):
        self.input_file = input_file
        self.output_dir = output_dir
        self.failset_prune = failset_prune
        self.failset_sort = failset_sort
        self.loop_bound = loop_bound
        self.unroll_factor_min = unroll_factor_min
        self.unroll_factor_max = unroll_factor_max
        self.unroll_factor_ratio = unroll_factor_ratio
        self.ce_bound = ce_bound
        self.timeout = timeout
        self.njobs = njobs
        self.vmem_limit = vmem_limit
        self.num_chunks = num_chunks
        self.use_assumes = use_assumes
        self.ineq_individual_tfgs = ineq_individual_tfgs
        self.disable_inequivalence = disable_inequivalence
        self.debug_flags = debug_flags

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

def is_asm_file(file_name: str) -> bool:
    extension = file_name.split('.')[-1]
    return extension == 's' or extension == 'S'

def get_tmpdir_path_from_config(eqrun_cfg: RunConfig, fname: str, src: str, dst: str, unroll: int) -> str:
    return f'{eqrun_cfg.output_dir}/tmpdir/ineq.{fname}-{src}-{dst}-{unroll}-{eqrun_cfg.loop_bound}'

def get_eq_command_from_config(eqrun_cfg: RunConfig, fname: str, src: str, dst: str, unroll: int) -> str:
    tokens = ['eq32']
    if eqrun_cfg.debug_flags != '':
        tokens.append(f'--dyn-debug={eqrun_cfg.debug_flags}')
    tokens.append(f'--unroll-factor={unroll}')

    # Inequivalence Checking Flags
    if eqrun_cfg.disable_inequivalence:
        tokens.append('--disable-inequivalence')
    else:
        tokens.append(f'--failset-mu={eqrun_cfg.loop_bound}')
        tokens.append(f'--ce-output={eqrun_cfg.output_dir}/counterexamples/ineq.{fname}-{src}-{dst}-{unroll}-{eqrun_cfg.loop_bound}.xml')
        if eqrun_cfg.ineq_individual_tfgs:
            tokens.append('--ineq-individual-tfgs')
        else:
            tokens.append(f'--failset-prune={eqrun_cfg.failset_prune}')
            tokens.append(f'--failset-sort={eqrun_cfg.failset_sort}')
            tokens.append(f'--ce-bound={eqrun_cfg.ce_bound}')

    tokens.append(f'{get_bench_path(fname, src)}')
    tokens.append(f'--dst={get_bench_path(fname, dst)}')

    tokens.append(f'--tmpdir-path={get_tmpdir_path_from_config(eqrun_cfg, fname, src, dst, unroll)}')
    tokens.append(f'--iquote-path=benchmarks/C/,benchmarks/Assembly/')
    if eqrun_cfg.use_assumes:
        # Provide an assumes file for the source (C) program
        # TODO: Handle the case when the source is an ASM program
        if is_c_file(src):
            src_prefix = src.split('.')[0]
            tokens.append(f'--assume=assumes/{fname}-{src_prefix}.assumes')
    return ' '.join(tokens)

def get_eq_command_with_vmem_limit(eqrun_cfg: RunConfig, fname: str, src: str, dst: str, unroll: int) -> str:
    command = get_eq_command_from_config(eqrun_cfg, fname, src, dst, unroll)
    return f'ulimit -v {eqrun_cfg.vmem_limit}; {command}'

def get_running_status_from_tmpdir(eqrun_cfg: RunConfig, fname: str, src: str, dst: str, unroll: int) -> str:
    tmpdir_path = get_tmpdir_path_from_config(eqrun_cfg, fname, src, dst, unroll)
    run_status_filename = f'{tmpdir_path}/submit.{fname}/{RUN_STATUS_FILE}'

    assert os.path.isfile(run_status_filename)
    tree = ET.parse(run_status_filename)
    root = tree.getroot()
    status_flag = root.find('status_flag')
    assert status_flag != None

    return status_flag.text

def get_tool_result_from_running_status(running_status: str) -> ToolResult:
    if running_status == 'found_proof':
        return ToolResult.EQUIV
    elif running_status == 'found_inequivalence':
        return ToolResult.INEQ
    elif running_status == 'exhausted_search_space':
        return ToolResult.FAIL
    else:
        assert False, f'Unrecognized running_status {running_status}'

def get_field_from_ce_output(eqrun_cfg: RunConfig, fname: str, src: str, dst: str, unroll: int, field: str) -> str:
    ce_out_file = f'{eqrun_cfg.output_dir}/counterexamples/ineq.{fname}-{src}-{dst}-{unroll}-{eqrun_cfg.loop_bound}.xml'

    assert os.path.isfile(ce_out_file)

    tree = ET.parse(ce_out_file)
    root = tree.getroot()
    field_val = root.find(field)
    assert field_val != None

    return field_val.text
 
def run_ineq_checker(fname: str, src_lib: str, dst_lib: str, log_file: TextIOWrapper, classes: equivalence_classes, unroll: int, eqrun_cfg: RunConfig) -> bool:
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
    out_file = open(f'{eqrun_cfg.output_dir}/logs/{fname}-{src_lib}-{dst_lib}-{unroll}-{eqrun_cfg.loop_bound}.proof', 'w')

    command = get_eq_command_with_vmem_limit(eqrun_cfg, fname, src_lib, dst_lib, unroll)
    # tokens = shlex.split(command)
    p = None
    try:
        log_file.write(f'\tRunning the tool for benchmark {fname} with src={src_lib}, dst={dst_lib}, at unroll_factor={unroll}\n')

        start_time = time.perf_counter()
        p = subprocess.Popen(command, stdout=out_file, stderr=out_file, shell=True, preexec_fn=os.setsid)
        p.wait(eqrun_cfg.timeout)
        end_time = time.perf_counter()

        if p.returncode == 0:
            # EQUIV/INEQ/FAIL
            running_status = get_running_status_from_tmpdir(eqrun_cfg, fname, src_lib, dst_lib, unroll)
            tool_result = get_tool_result_from_running_status(running_status)
            info = run_info(fname, src_lib, dst_lib, unroll, tool_result, 0, end_time-start_time)

            if tool_result == ToolResult.EQUIV:
                log_file.write(f'\t\tProved {fname} to be equivalent for {src_lib}, {dst_lib}.\n')
                classes.merge(src_lib, dst_lib)
            elif tool_result == ToolResult.INEQ:
                log_file.write(f'\t\tProved {fname} to be inequivalent for {src_lib}, {dst_lib}.\n')
                classes.add_inequivalent(src_lib, dst_lib)
                loop_bound = int(get_field_from_ce_output(eqrun_cfg, fname, src_lib, dst_lib, unroll, 'loop_bound'))
                info.add_loop_bound(loop_bound)
            else:
                log_file.write(f'\t\tExhausted search space for {fname}, {src_lib}, {dst_lib}.\n')
                RETRY = True
            classes.add_run_info(info)
        else:
            log_file.write(f'\t\tFound errcode {p.returncode} for {fname}, {src_lib}, {dst_lib}.\n')
            RETRY = True
            classes.add_run_info(run_info(fname, src_lib, dst_lib, unroll, ToolResult.ERROR, p.returncode, end_time-start_time))
        log_file.write(f'\tTime Taken = {end_time-start_time}, unroll-factor={unroll}\n')
    except subprocess.TimeoutExpired:
        os.killpg(os.getpgid(p.pid), signal.SIGTERM)
        log_file.write(f'\t\tTimeout for benchmark {fname} with src={src_lib}, dst={dst_lib}\n')
        RETRY = True
        classes.add_run_info(run_info(fname, src_lib, dst_lib, unroll, ToolResult.TIMEOUT, p.returncode, None))
    finally:
        out_file.close()
        log_file.flush()
    return RETRY

def run_benchmark(strings: str, tag: str, classes: equivalence_classes, eqrun_cfg: RunConfig):
    # strings = [s.strip() for s in line.split(',')]
    fname = strings[0]
    libraries = strings[1:]

    log_file_name = f'{eqrun_cfg.output_dir}/stats/{fname}-{tag}.log'
    log_file = open(log_file_name, 'w')
    log_file.write(f'Running experiments for {fname}\n')
    for pair in itertools.combinations(libraries, 2):
        l1, l2 = pair
        if (l1, l2) in classes.cache:
            continue
        unroll = eqrun_cfg.unroll_factor_min
        while unroll <= eqrun_cfg.unroll_factor_max:
            retry = run_ineq_checker(fname, l1, l2, log_file, classes, unroll, eqrun_cfg)
            if not retry:
                break
            retry = run_ineq_checker(fname, l2, l1, log_file, classes, unroll, eqrun_cfg)
            if not retry:
                break
            unroll *= eqrun_cfg.unroll_factor_ratio
        classes.add_cache(l1, l2)
    log_file.write(f'Ran all experiments for {fname}\n')
    classes.print(log_file)
    log_file.close()
    
    return classes

def split(a, n):
    k, m = divmod(len(a), n)
    return (a[i*k+min(i, m):(i+1)*k+min(i+1, m)] for i in range(n))

def divide_conquer(line: str, tag: str, eqrun_cfg: RunConfig) -> Tuple[List[run_info], List[run_info]]:
    strings = [s.strip() for s in line.split(',')]
    fname = strings[0]
    libraries = strings[1:]

    eq_class_file = f'{eqrun_cfg.output_dir}/eq_classes/{fname}-{tag}-classes.pkl'

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
        all_classes = Parallel(n_jobs=num_chunks)(delayed(run_benchmark)([fname]+chunk, tag+'-'+str(i), equivalence_classes(fname, chunk), eqrun_cfg) for i, chunk in enumerate(chunks))

        classes = merge_all_classes(all_classes)
    else:
        classes = equivalence_classes(fname, libraries) if classes is None else classes
    
    classes = run_benchmark(strings, tag, classes, eqrun_cfg)

    with open(eq_class_file, 'wb') as f:
        pickle.dump(classes, f)

    stat_file_name = f'{eqrun_cfg.output_dir}/stats/{fname}-{tag}-stats.csv'
    
    with open(stat_file_name, 'w') as f:
        for info in classes.get_runs():
            f.write(f'{info.to_string()}\n')

    return [run for run in classes.get_runs() if run.is_eq()], [run for run in classes.get_runs() if run.is_ineq()]

# Runs the experiments while keeping track of equivalence classes
def run_experiments(eqrun_cfg: RunConfig):
    file = open(eqrun_cfg.input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    file.close()

    results: List[Tuple[List[run_info], List[run_info]]] = Parallel(n_jobs=min(eqrun_cfg.njobs, len(lines)))(delayed(divide_conquer)(line, str(i), eqrun_cfg) for i, line in enumerate(lines))

    equivalences: List[run_info] = []
    inequivalences: List[run_info] = []
    for res in results:
        eq, ineq = res
        equivalences += eq
        inequivalences += ineq

    eq_file = f'{eqrun_cfg.output_dir}/results/eq-{eqrun_cfg.input_file}'
    with open(eq_file, 'w') as f:
        for info in equivalences:
            f.write(f'{info.to_string()}\n')

    ineq_file = f'{eqrun_cfg.output_dir}/results/ineq-{eqrun_cfg.input_file}'
    with open(ineq_file, 'w') as f:
        for info in inequivalences:
            f.write(f'{info.to_string()}\n')

# Takes the computed classes and generates the classes in dot format
def analysis(eqrun_cfg: RunConfig):
    pickled_files = glob.glob(f'{eqrun_cfg.output_dir}/eq_classes/*-classes.pkl')
    pickled_files.sort()
    groups = dict()
    for file in pickled_files:
        toks = file.split('-')
        fname = toks[0].split('/')[2]
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
        dot_file = open(f'{eqrun_cfg.output_dir}/graphviz/{fname}-classes.dot', 'w')
        dot_file.write(f'{dot_dump}\n')
        dot_file.close()

def plot_hist(eqrun_cfg: RunConfig, times, title, xlabel='Time (in seconds)'):
    plt.rcParams.update({'figure.figsize':(7,5), 'figure.dpi':100})

    plt.hist(times, bins=50)
    plt.gca().set(title=f'{title}', ylabel='Frequency', xlabel=xlabel)
    plt.savefig(f'{eqrun_cfg.output_dir}/plots/{title}.png')
    plt.clf()

# Analyses the logs to generate statistics
def graph_gen(eqrun_cfg: RunConfig):
    stats = glob.glob(f'{eqrun_cfg.output_dir}/stats/*-stats.csv')
    stats.sort()
    NTIMEOUTS = 0
    completion_times = []
    eq_times = []
    ineq_times = []
    failure_times = []
    ranking_ratios = []
    ineq_loop_bound = []
    eq_unroll_factor = []
    ineq_unroll_factor = []
    for file in stats:
        with open(file, 'r') as fp:
            lines = fp.readlines()
            for line in lines:
                toks = line.split(',')
                assert len(toks) >= 5
                if toks[3] == ToolResult.TIMEOUT:
                    # FORMAT: {fname},{src},{dst},{result},{unroll}
                    NTIMEOUTS += 1
                elif toks[3] == ToolResult.EQUIV:
                    # FORMAT: {fname},{src},{dst},{result},{unroll},{time}
                    completion_times.append(float(toks[-1]))
                    eq_times.append(float(toks[-1]))
                    eq_unroll_factor.append(toks[4])
                elif toks[3] == ToolResult.INEQ:
                    # FORMAT: {fname},{src},{dst},{result},{unroll},{loop-bound},{time}
                    completion_times.append(float(toks[-1]))
                    ineq_times.append(float(toks[-1]))
                    loop_bound = get_field_from_ce_output(eqrun_cfg, toks[0], toks[1], toks[2], toks[4], 'loop_bound')
                    ineq_loop_bound.append(loop_bound)
                    ineq_unroll_factor.append(toks[4])
                    if eqrun_cfg.ineq_individual_tfgs:
                        cg_rank = int(get_field_from_ce_output(eqrun_cfg, toks[0], toks[1], toks[2], toks[4], 'cg_rank'))
                        failed_cg_set_size = int(get_field_from_ce_output(eqrun_cfg, toks[0], toks[1], toks[2], toks[4], 'failed_cg_set_size'))
                        ranking_ratios.append(cg_rank / failed_cg_set_size)
                elif toks[3] == 'ToolResult.FAIL':
                    completion_times.append(float(toks[-1]))
                    failure_times.append(float(toks[-1]))

    print(f'NTIMEOUTS = {NTIMEOUTS}')
    plot_hist(eqrun_cfg, completion_times, 'Completion Times')
    plot_hist(eqrun_cfg, eq_times, 'Equivalence Times')
    plot_hist(eqrun_cfg, ineq_times, 'Inequivalence Times')
    plot_hist(eqrun_cfg, failure_times, 'Failure Times')
    if eqrun_cfg.ineq_individual_tfgs:
        plot_hist(eqrun_cfg, ranking_ratios, 'Ranking Ratio')
    plot_hist(eqrun_cfg, ineq_loop_bound, 'Inequivalence Loop-Bound')
    plot_hist(eqrun_cfg, eq_unroll_factor, 'Equivalence Unroll Factor')
    plot_hist(eqrun_cfg, ineq_unroll_factor, 'Inequivalence Unroll Factor')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Inequivalence Checking Benchmarking')

    # Flags pertaining to benchmarking
    parser.add_argument('--mode', action='store', type=str, help='Denotes the function of the script. Options = [run|analysis|graph-gen]', default='')
    parser.add_argument('--input-file', action='store', type=str, help='File containing the benchmarks to run', default='')
    parser.add_argument('--timeout', action='store', type=int, help='Timeout for each run (in seconds)', default=60*60)
    parser.add_argument('--njobs', action='store', type=int, default=25)
    parser.add_argument('--num-chunks', action='store', type=int, help='Number of chunks into which each experiment is divided into', default=1)
    parser.add_argument('--vmem-limit', action='store', type=int, help='Virtual memory limit in (KB) to be used for each process', default=32*1024*1024) # 32 GB
    parser.add_argument('--output-dir', action='store', type=str, help='Directory where all the files will be written', default='')

    # Flags pertaining to eq32
    parser.add_argument('--dyn-debug', action='store', type=str, help='Debug flags for the tool', default='')
    parser.add_argument('--failset-prune', action='store', type=int, help='Denotes the number of failed CGs to be used for inequivalence checking. -1 denotes no pruning.', default=-1)
    parser.add_argument('--failset-sort', action='store', type=str, help='Denotes the strategy used to rank failed CGs', default='next-cross')
    parser.add_argument('--failset-mu', action='store', type=int, help='Denotes the loop bound to be used in inequivalence checking', default=4)
    parser.add_argument('--unroll-factor-min', action='store', type=int, default=1)
    parser.add_argument('--unroll-factor-max', action='store', type=int, default=4)
    parser.add_argument('--unroll-factor-ratio', action='store', type=int, default=2)
    parser.add_argument('--ce-bound', action='store', type=int, help='Sets a bound on the counter examples to be generated', default=20)
    parser.add_argument('--assumes', action='store_true', help='Run the tool with appropriate assumes for each function')
    parser.add_argument('--ineq-individual-tfgs', action='store_true', help='Enable the alternate inequivalence checking approach')
    parser.add_argument('--disable-inequivalence', action='store_true', help='Disable Inequivalence Checking')

    args = parser.parse_args()
    argsMap = args.__dict__
    assert(argsMap['mode'] != '')
    assert argsMap['mode'] == 'run' or argsMap['mode'] == 'analysis' or argsMap['mode'] == 'graph-gen', f'Invalid Mode'
    assert(argsMap['input-file'] != '')

    print(f'My pid is {os.getpid()}, pgid is {os.getpgid(0)}')

    output_dir = f'ineq.{argsMap["input-file"]}' if argsMap['output-dir'] == '' else argsMap['output-dir']

    eqrun_cfg = RunConfig(argsMap['input-file'],
                          output_dir,
                          argsMap['failset-prune'],
                          argsMap['failset-sort'],
                          argsMap['failset-mu'],
                          argsMap['unroll-factor-min'],
                          argsMap['unroll-factor-max'],
                          argsMap['unroll-factor-ratio'],
                          argsMap['ce-bound'],
                          argsMap['timeout'],
                          argsMap['njobs'],
                          argsMap['vmem-limit'],
                          argsMap['num-chunks'],
                          argsMap['assumes'],
                          argsMap['ineq-individual-tfgs'],
                          argsMap['disable-inequivalence'],
                          argsMap['dyn-debug'])

    if argsMap['mode'] == 'run':
        run_experiments(eqrun_cfg)
    elif argsMap['mode'] == 'analysis':
        analysis(eqrun_cfg)
    elif argsMap['mode'] == 'graph-gen':
        graph_gen(eqrun_cfg)
