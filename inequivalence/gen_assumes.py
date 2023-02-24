from enum import Enum
from textwrap import dedent
import glob
import shlex
import subprocess

class UB(Enum):
    MEMORY_OVERLAP = 1
    VALID_POINTER_VAL = 2
    EVEN_ARG = 3

ASSUME_HEADER = '=assumes'
COMMENT_HEADER = '=Comment'
PREDICATE_DONE = "=predicate done"

memcpy_args = {
    # 'dietlibc_small': ['dst', 'src', 'n'],
    # 'dietlibc_fast': ['dst', 'src', 'n'],
    # 'freebsd': ['dst0', 'src0', 'length'],
    # 'klibc': ['dst', 'src', 'n'],
    # 'musl': ['dest', 'src', 'n'],
    'netbsd_small': ['s1', 's2', 'n'],
    'netbsd_fast': ['dst0', 'src0', 'length'],
    # 'netbsd_or1k': ['a', 'b', 'len'],
    # 'newlib_small': ['dst0', 'src0', 'len0'],
    # 'newlib_fast': ['dst0', 'src0', 'len0'],
    # 'openbsd': ['dst0', 'src0', 'length'],
    # 'openbsd_m88k': ['s1', 's2', 'n'],
    # 'uClibc': ['s1', 's2', 'n'],
    # 'uClibc_powerpc': ['to', 'from', 'len']
}

strlen_args = {
    'dietlibc_small': ['s'],
    'dietlibc': ['s'],
    # 'freebsd': ['str'],
    # 'glibc': ['str'],
    # 'klibc': ['s'],
    # 'musl': ['s'],
    # 'netbsd': ['str'],
    # 'newlib': ['str'],
    # 'openbsd': ['str'],
    # 'uClibc': ['s'],
}

UB_MAP = {
    'memccpy': ([UB.MEMORY_OVERLAP], {}),
    'memcpy': ([UB.MEMORY_OVERLAP], memcpy_args),
    'stpncpy': ([UB.VALID_POINTER_VAL], {}),
    'strlen': ([UB.VALID_POINTER_VAL], strlen_args),
    'strnlen': ([UB.VALID_POINTER_VAL], {}),
    'swab': ([UB.EVEN_ARG], {}),
    'wcschr': ([UB.VALID_POINTER_VAL], {})
}


def get_assume_string(ub_type, arg_list, comment='This is a Commment') -> str:
    s = ''
    s += ASSUME_HEADER + '\n'
    s += COMMENT_HEADER + '\n' + comment + '\n'
    s += '=LhsExpr' + '\n'
    # Add LHS str
    if ub_type == UB.MEMORY_OVERLAP:
        dst, src, n = arg_list[0], arg_list[1], arg_list[-1]
        s += dedent(f"""\
        1 : input.src.llvm-%{src} : BV:32
        2 : input.src.llvm-%{n} : BV:32
        3 : bvadd(1, 2) : BV:32
        4 : bvslt(1, 3) : BOOL
        5 : input.src.llvm-%{dst} : BV:32
        6 : bvadd(5, 2) : BV:32
        7 : bvslt(5, 6) : BOOL
        8 : bvsle(3, 5) : BOOL
        9 : bvsle(6, 1) : BOOL
        10 : or(8, 9) : BOOL
        11 : and(4, 7) : BOOL
        12 : and(11, 10) : BOOL\n""")
    elif ub_type == UB.VALID_POINTER_VAL:
        str = arg_list[0]
        s += dedent(f"""\
        1 : input.src.llvm-%{str} : BV:32
        2 : 0 : BV:32
        3 : eq(1, 2) : BOOL
        4 : not(3) : BOOL\n""")
        if len(arg_list) > 2:
            s += dedent(f"""\
            5 : input.src.llvm-%{arg_list[1]} : BV:32
            6 : eq(5, 2) : BOOL
            7 : not(6) : BOOL
            8 : and(4, 7) : BOOL\n""")
    elif ub_type == UB.EVEN_ARG:
        length = arg_list[-1]
        s += dedent(f"""\
        1 : input.src.llvm-%{length} : BV:32
        2 : 2 : BV:32
        3 : bvsrem(1, 2) : BV:32
        4 : 0 : BV:32
        5 : eq(3, 4) : BOOL\n""")
    s += '=RhsExpr' + '\n'
    # Add RHS str
    s += "1 : 1 : BOOL\n"
    s += PREDICATE_DONE + '\n'
    return s

def get_args(fname):
    benchmarks = glob.glob(f'benchmarks/C/{fname}/*.c')
    ret = dict()
    for bench in benchmarks:
        libName = bench.split('/')[-1][:-2].split('_', maxsplit=1)[1]
        command = f'ctags -x --c-kinds=fz --sort=no --if0=no {bench}'
        tokens = shlex.split(command)
        result = subprocess.run(tokens, check=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        outputLines = result.stdout.decode('utf-8').splitlines()
        
        tags = [line.split(maxsplit=4) for line in outputLines]
        functions = [line[0] for line in tags if line[1] == 'function']
        if len(functions) != 1:
            print(f'Multiple functions present in file {bench}')
            ret[libName] = None
            continue
        args = [line[0] for line in tags if line[1] == 'parameter']
        ret[libName] = args
    return ret

def gen_assumes():
    for fname in UB_MAP:
        ub_list, libArgsHardcoded = UB_MAP[fname]
        libArgs = get_args(fname)
        for lib in libArgs:
            args = libArgs[lib]
            if args == None:
                args = libArgsHardcoded[lib]
            with open(f'assumes/{fname}-{lib}.assumes', 'w') as fp:
                s = ''
                for ub in ub_list:
                    s += get_assume_string(ub, args)
                s += '=done'
                fp.write(s)

if __name__ == '__main__':
    gen_assumes()