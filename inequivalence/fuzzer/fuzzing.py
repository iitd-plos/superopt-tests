import argparse
import sys
from itertools import chain, combinations
from consts import *
import re
import os, shlex, subprocess, signal
from joblib import Parallel, delayed
import json

CC='gcc'
HARNESS_FILE='utils/fuzz_harness.c'
INCLUDE='include'
BIN='bin'
SRC='src'
AFL_FUZZ='afl-fuzz'
BENCH_PROT='bench_prototype.h'
NJOBS=51
TIMEOUT=60*60*2 # 2 hours
EXEC_TIME=30

def powerset(iterable):
    """powerset([1,2,3]) --> () (1,) (2,) (3,) (1,2) (1,3) (2,3) (1,2,3)"""
    s = list(iterable)
    return chain.from_iterable(combinations(s, r) for r in range(len(s)+1))

benchmark_info = {
    'memccpy': (['OVERLAP', 'CHARC'], memccpy_prototype, memccpy_harness),
    'memchr': (['CHARC'], memchr_prototype, memchr_harness),
    'memcpy': (['OVERLAP'], memcpy_prototype, memcpy_harness),
    'memrchr': (['CHARC'], memrchr_prototype, memrchr_harness),
    'stpncpy': (['OVERLAP'], stpncpy_prototype, stpncpy_harness),
    'strcasecmp': ([], strcasecmp_prototype, strcasecmp_harness),
    'strcmp': ([], strcmp_prototype, strcmp_harness),
    'strlcpy': (['OVERLAP'], strlcpy_prototype, strlcpy_harness),
    'strlen': ([], strlen_prototype, strlen_harness),
    'strncasecmp': ([], strncasecmp_prototype, strncasecmp_harness),
    'strrchr': (['CHARC'], strrchr_prototype, strrchr_harness),
    'swab': (['OVERLAP'], swab_prototype, swab_harness),
    'wcschr': ([], wcschr_prototype, wcschr_harness),
    'wcscmp': ([], wcscmp_prototype, wcscmp_harness),
    'wcsncmp': ([], wcsncmp_prototype, wcsncmp_harness),
    'wcsrchr': ([], wcsrchr_prototype, wcsrchr_harness),
    'wcsstr': ([], wcsstr_prototype, wcsstr_harness),
    'wmemcmp': ([], wmemcmp_prototype, wmemcmp_harness)
}

def get_preprocess_flag(flags):
    flags = list(flags)
    return ' '.join(['-D'+flag for flag in flags])

def get_executable_name(fname, src, dst, flags):
    flags = list(flags)
    suffix = ''
    if len(flags) != 0:
        suffix = '-' + '-'.join(list(flags))
    return f'fuzz-{fname}-{src}-{dst}{suffix}'
    

# Replaces all include paths of the form `#include "../<file>.h"` to `#include "<file>.h"` 
def replace_include_path(file_content):
    replaced, num_sub = re.subn('^#include "\.\./', '#include "', file_content, flags=re.MULTILINE)
    if num_sub != 0:
        print(f'Number of include paths replaced = {num_sub}')
    return replaced

# Renames all function declarations to fname_{tag}
# Using this workaround because we cannot automatically add a static qualifier to the function definition
def rename_function(file_path, file_content: str, tag_to_add: str):
    command = f'ctags -x --c-kinds=f --sort=no {file_path}'
    tokens = shlex.split(command)
    result = subprocess.run(tokens, check=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    outputLines = result.stdout.decode('utf-8').splitlines()
    tags = [line.split(maxsplit=4) for line in outputLines]
    
    fileLines = file_content.splitlines()
    total_sub = 0
    for func in tags:
        fname, typ, line_no, _, _ = func
        line_no = int(line_no)
        assert(typ == 'function')
        replaced, num_sub = re.subn(f'{fname}', f'{fname}_{tag_to_add}', fileLines[line_no-1])
        total_sub += num_sub
        fileLines[line_no-1] = replaced
    
    print(f'Number of function names replaced = {total_sub}')
    ret = '\n'.join(fileLines)
    return ret

def run_command(compile_command):
    print(compile_command)
    tokens = shlex.split(compile_command)
    result = subprocess.run(tokens, check=False)
    if result.returncode != 0:
        print('Compilation failed')

def is_c_file(file_name: str) -> bool:
    return file_name.split('.')[-1] == 'c'

def parse_input_csv(input_file):
    file = open(input_file, 'r')
    lines = file.readlines()
    lines = [line.strip() for line in lines]
    file.close()
    
    files_to_instrument = set()
    experiments = []
    ret = []
    
    for line in lines:
        fname, src, dst, unroll, result, time = line.split(',')
        assert(result == 'ToolResult.INEQ')
        # Cannot fuzz assembly benchmarks
        if not (is_c_file(src) and is_c_file(dst)):
            continue
        # Remove extension from the name
        src = src.split('.')[0]
        dst = dst.split('.')[0]
        if fname not in benchmark_info:
            print(f'Function {fname} not recognized')
            sys.exit(1)
        else:
            files_to_instrument.add((fname, src))
            files_to_instrument.add((fname, dst))
            experiments.append((fname, src, dst))
        ret.append(line.split(','))

    files_to_instrument = sorted(files_to_instrument)
    
    return files_to_instrument, experiments, ret

def gen_fuzzers(input_file):
    files_to_instrument, experiments, _ = parse_input_csv(input_file)
    
    prototypes_to_add = []
    
    for fname, lib in files_to_instrument:
        source_path = f'../benchmarks/C/{fname}/{fname}_{lib}.c'
        print(fname, lib, source_path)
        assert(os.path.isfile(source_path))
        dest_path = f'src/{fname}-{lib}.c'
        with open(source_path, 'r') as fp:
            data = fp.read()
            data = replace_include_path(data)
            data = rename_function(source_path, data, lib)
            instrumented = benchmark_info[fname][1].format(lib)
            prototypes_to_add.append(get_prototype(instrumented))
            with open(dest_path, 'w') as wpf:
                wpf.write(data)
    
    
    include_file_data = C_BOILERPLATE + '\n' + '\n'.join(prototypes_to_add) + '\n'

    with open(f'{INCLUDE}/{BENCH_PROT}', 'w') as fp:
        fp.write(include_file_data)
    
    commands = []
    for fname, src, dst in experiments:
        write_file_path = f'harness/fuzz-{fname}-{src}-{dst}.c'
        print(write_file_path)
        write_data = HARNESS_BOILERPLATE + '\n' + benchmark_info[fname][2].format(src, dst)
        with open(write_file_path, 'w') as fp:
            fp.write(write_data)
        
        options = list(powerset(benchmark_info[fname][0]))
        for flag in options:
            macro_flag = get_preprocess_flag(flag)
            exec_name = get_executable_name(fname, src, dst, flag)
            compile_command = f'{CC} {write_file_path} {HARNESS_FILE} {SRC}/{fname}-{src}.c {SRC}/{fname}-{dst}.c -I{INCLUDE} {macro_flag} -o {BIN}/{exec_name}'
            
            commands.append(compile_command)
            
    Parallel(n_jobs=NJOBS)(delayed(run_command)(c) for c in commands)
    
def run_fuzz_command(c):
    fname, src, dst, flags = c
    exec_name = get_executable_name(fname, src, dst, flags)
    log_file_name = f'logs/{exec_name}.log'
    log_file = open(log_file_name, 'w')
    log_file.write(f'Running the fuzzer for {exec_name}\n')
    fuzz_command = f'{AFL_FUZZ} -i in/{fname} -o out/{exec_name} -t {EXEC_TIME} ./{BIN}/{exec_name} @@'
    p = None
    try:
        p = subprocess.Popen(fuzz_command, stdout=log_file, shell=True, stderr=log_file, preexec_fn=os.setsid)
        p.wait(TIMEOUT)
        print(f'{exec_name}: {p.returncode}')
    except subprocess.TimeoutExpired:
        os.killpg(os.getpgid(p.pid), signal.SIGINT)
        log_file.write(f'Finished fuzzing for {exec_name}\n')
    finally:
        log_file.close()

def run_fuzzers(input_file):
    _, experiments, _ = parse_input_csv(input_file)
    commands_to_run = []
    
    for fname, src, dst in experiments:
        options = list(powerset(benchmark_info[fname][0]))
        for flags in options:
            commands_to_run.append((fname, src, dst, flags))
    
    Parallel(n_jobs=NJOBS)(delayed(run_fuzz_command)(c) for c in commands_to_run)

def read_fuzzer_stats(exec_name):
    stat_file = f'out/{exec_name}/fuzzer_stats'
    
    ret = dict()
    with open(stat_file, 'r') as fp:
        lines = fp.readlines()
        lines = [line.strip() for line in lines]
        for line in lines:
            key, value = [tok.strip() for tok in line.split(':')]
            ret[key] = value
    
    return ret

def read_plot_data(exec_name):
    plot_data_file = f'out/{exec_name}/plot_data'
    
    with open(plot_data_file, 'r') as fp:
        lines = fp.readlines()
        lines = [line.strip().split(',') for line in lines]
        lines = [[col.strip() for col in line] for line in lines]
        return lines
    
def get_first_crash_time(plot_data):
    for i, line in enumerate(plot_data):
        if i == 0:
            continue
        unique_crashes = int(line[7])
        if unique_crashes > 0:
            return int(line[0])
    return 'NA'

def analysis(input_file):
    _, _, lines = parse_input_csv(input_file)
    json_dump = dict()
    total_bugs = len(lines)
    fuzzer_bugs = 0
    total_configs = 0
    harness_with_bugs = 0

    for line in lines:
        fname, src, dst, unroll, result, time = line
        key = f'{fname}|{src}|{dst}'
        value = dict()
        value['unroll'] = unroll
        value['eq32-result'] = result.split('.')[1]
        value['eq32-time'] = time
        
        fuzzer_found_bug = False
        harnesses = dict()
        options = list(powerset(benchmark_info[fname][0]))
        for flags in options:
            total_configs += 1
            harness_stats = dict()
            harness_name = 'default'
            if len(flags) != 0:
                harness_name = '-'.join(list(flags))
            src_name = src.split('.')[0]
            dst_name = dst.split('.')[0]
            exec_name = get_executable_name(fname, src_name, dst_name, flags)
            fuzz_stats = read_fuzzer_stats(exec_name)
            plot_data = read_plot_data(exec_name)
            
            start_time = int(fuzz_stats['start_time'])
            end_time = int(fuzz_stats['last_update'])
            last_crash = int(fuzz_stats['last_crash'])
            if last_crash == 0:
                time_since_last_crash = end_time - start_time
                last_crash = 'NA'
            else:
                time_since_last_crash = end_time - last_crash
                last_crash = last_crash - start_time
            
            first_crash_time = get_first_crash_time(plot_data)
            if first_crash_time != 'NA':
                first_crash_time = first_crash_time - start_time
            
            num_unique_crashes = int(fuzz_stats['unique_crashes'])
            fuzzer_found_bug = fuzzer_found_bug or (num_unique_crashes != 0)
            
            if num_unique_crashes != 0:
                avg_crash_time = last_crash / num_unique_crashes
            else:
                avg_crash_time = 'NA'
            
            harness_stats['found_bug'] = (num_unique_crashes != 0)
            harness_stats['unique_crashes'] = num_unique_crashes
            harness_stats['last_crash_time'] = last_crash
            harness_stats['avg_crash_time'] = avg_crash_time
            harness_stats['time_since_last_crash'] = time_since_last_crash
            harness_stats['first_crash_time'] = first_crash_time
            
            harnesses[harness_name] = harness_stats
            
            if num_unique_crashes != 0:
                harness_with_bugs += 1
        if fuzzer_found_bug:
            fuzzer_bugs += 1
        value['fuzzer_found_bug'] = fuzzer_found_bug
        value['harnesses'] = harnesses
        json_dump[key] = value
    
    with open(f'{input_file}.json', 'w') as fp:
        json.dump(json_dump, fp, indent=4)
    
    print(f'Total Bugs = {total_bugs}, fuzzer_bugs = {fuzzer_bugs}, Total Configs = {total_configs}, Configs with bugs = {harness_with_bugs}')   
        

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Differential Fuzzing Benchmarking')
    parser.add_argument('--input_file', action='store', type=str, help='File containing the benchmarks to run', default='')
    parser.add_argument('--run_experiments', action='store_true')
    parser.add_argument('--analysis', action='store_true')
    parser.add_argument('--cc', action='store', type=str, help='Compiler to use.', default='gcc')
    parser.add_argument('--timeout', action='store', type=int, help='Timeout for each run (in seconds)', default=TIMEOUT)
    parser.add_argument('--njobs', action='store', type=int, default=NJOBS)
    parser.add_argument('--exec_time', action='store', type=int, help='Timeout for each run (msec)', default=EXEC_TIME)
    args = parser.parse_args()
    CC = args.cc
    TIMEOUT = args.timeout
    NJOBS = args.njobs
    EXEC_TIME=args.exec_time
    print(f'My pid is {os.getpid()}, pgid is {os.getpgid(0)}')
    print(f'TIMEOUT = {TIMEOUT}, NJOBS = {NJOBS}, EXEC_TIME = {EXEC_TIME} (msec)')
    if args.run_experiments:
        run_fuzzers(args.input_file)
    elif args.analysis:
        analysis(args.input_file)
    else:
        gen_fuzzers(args.input_file)
