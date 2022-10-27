from enum import Enum
from textwrap import dedent

class UB(Enum):
    MEMORY_OVERLAP = 1
    VALID_POINTER_VAL = 2
    EVEN_ARG = 3

ASSUME_HEADER = '=assumes'
COMMENT_HEADER = '=Comment'
PREDICATE_DONE = "=predicate done"

memccpy_args = {
    'dietlibc': ['dst', 'src', 'c', 'count'],
    'freebsd': ['t', 'f', 'c', 'n'],
    'klibc': ['dst', 'src', 'c', 'n'],
    'musl': ['dest', 'src', 'c', 'n'],
    'netbsd': ['t', 'f', 'c', 'n'],
    'newlib_v1': ['dst0', 'src0', 'endchar0', 'len0'],
    'newlib_v2': ['dst0', 'src0', 'endchar0', 'len0'],
    'openbsd': ['t', 'f', 'c', 'n'],
    'uClibc': ['s1', 's2', 'c', 'n'],
}

memcpy_args = {
    'dietlibc_v1': ['dst', 'src', 'n'],
    'dietlibc_v2': ['dst', 'src', 'n'],
    'freebsd': ['dst0', 'src0', 'length'],
    'klibc_v1': ['dst', 'src', 'n'],
    'musl': ['dest', 'src', 'n'],
    'newlib_v1': ['dst0', 'src0', 'len0'],
    'newlib_v2': ['dst0', 'src0', 'len0'],
    'openbsd': ['dst0', 'src0', 'length'],
    'uClibc': ['s1', 's2', 'n'],
}

strlen_args = {
    'dietlibc': ['s'],
    'freebsd': ['str'],
    'glibc': ['str'],
    'klibc': ['s'],
    'musl': ['s'],
    'newlib': ['str'],
    'openbsd': ['str'],
    'uClibc': ['s'],
}

swab_args = {
    'dietlibc': ['src', 'dest', 'nbytes'],
    'freebsd': ['from', 'to', 'len'],
    'glibc': ['bfrom', 'bto', 'n'],
    'musl': ['_src', '_dest', 'n'],
    'netbsd': ['from', 'to', 'len'],
    'newlib': ['b1', 'b2', 'length'],
    'openbsd': ['from', 'to', 'len'],
}

UB_MAP = {
    'memccpy': ([UB.MEMORY_OVERLAP], memccpy_args),
    'memcpy': ([UB.MEMORY_OVERLAP], memcpy_args),
    'strlen': ([UB.VALID_POINTER_VAL], strlen_args),
    'swab': ([UB.EVEN_ARG], swab_args)
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
    elif ub_type == UB.EVEN_ARG:
        len = arg_list[-1]
        s += dedent(f"""\
        1 : input.src.llvm-%{len} : BV:32
        2 : 2 : BV:32
        3 : bvsrem(1, 2) : BV:32
        4 : 0 : BV:32
        5 : eq(3, 4) : BOOL\n""")
    s += '=RhsExpr' + '\n'
    # Add RHS str
    s += "1 : 1 : BOOL\n"
    s += PREDICATE_DONE + '\n'
    return s

def gen_assumes():
    for fname in UB_MAP:
        ub_list, libargs = UB_MAP[fname]
        for lib in libargs:
            with open(f'assumes/{fname}_{lib}.assumes', 'w') as fp:
                s = ''
                for ub in ub_list:
                    s += get_assume_string(ub, libargs[lib])
                s += '=done'
                fp.write(s)

if __name__ == '__main__':
    gen_assumes()