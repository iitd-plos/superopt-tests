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
    'glibc': ['dst', 'src', 'c', 'n'],
    'klibc': ['dst', 'src', 'c', 'n'],
    'musl': ['dest', 'src', 'c', 'n'],
    'netbsd': ['t', 'f', 'c', 'n'],
    'newlib_small': ['dst0', 'src0', 'endchar0', 'len0'],
    'newlib_fast': ['dst0', 'src0', 'endchar0', 'len0'],
    'openbsd': ['t', 'f', 'c', 'n'],
    'uClibc': ['s1', 's2', 'c', 'n'],
}

memcpy_args = {
    'dietlibc_small': ['dst', 'src', 'n'],
    'dietlibc_fast': ['dst', 'src', 'n'],
    'freebsd': ['dst0', 'src0', 'length'],
    'klibc': ['dst', 'src', 'n'],
    'musl': ['dest', 'src', 'n'],
    'netbsd_small': ['s1', 's2', 'n'],
    'netbsd_fast': ['dst0', 'src0', 'length'],
    'netbsd_or1k': ['a', 'b', 'len'],
    'newlib_small': ['dst0', 'src0', 'len0'],
    'newlib_fast': ['dst0', 'src0', 'len0'],
    'openbsd': ['dst0', 'src0', 'length'],
    'openbsd_m88k': ['s1', 's2', 'n'],
    'uClibc': ['s1', 's2', 'n'],
    'uClibc_powerpc': ['to', 'from', 'len']
}

stpncpy_args = {
    'freebsd': ['dst', 'src', 'n'],
    'netbsd': ['dst', 'src', 'n'],
    'newlib_small': ['dst', 'src', 'count'],
    'newlib_fast': ['dst', 'src', 'count'],
    'openbsd': ['dst', 'src', 'n'],
    'uClibc': ['s1', 's2', 'n'],
}

strlen_args = {
    'dietlibc_small': ['s'],
    'dietlibc': ['s'],
    'freebsd': ['str'],
    'glibc': ['str'],
    'klibc': ['s'],
    'musl': ['s'],
    'netbsd': ['str'],
    'newlib': ['str'],
    'openbsd': ['str'],
    'uClibc': ['s'],
}

strnlen_args = {
    'freebsd': ['s', 'maxlen'],
    'freebsd_heimdal': ['s', 'len'],
    'freebsd_openssh': ['str', 'maxlen'],
    'glibc': ['str', 'maxlen'],
    'klibc': ['s', 'maxlen'],
    'netbsd': ['s', 'maxlen'],
    'netbsd_heimdal': ['s', 'len'],
    'newlib': ['str', 'n'],
    'openbsd': ['str', 'maxlen'],
    'uClibc': ['s', 'max']
}

swab_args = {
    'dietlibc': ['src', 'dest', 'nbytes'],
    'freebsd': ['from', 'to', 'len'],
    'freebsd_heimdal': ['from', 'to', 'nbytes'],
    'glibc': ['bfrom', 'bto', 'n'],
    'musl': ['_src', '_dest', 'n'],
    'netbsd': ['from', 'to', 'len'],
    'netbsd_heimdal': ['from', 'to', 'nbytes'],
    'newlib': ['b1', 'b2', 'length'],
    'openbsd': ['from', 'to', 'len'],
    'uClibc': ['source', 'dest', 'count']
}

wcschr_args = {
    'dietlibc': ['wcs', 'wc'],
    'freebsd': ['s', 'c'],
    'glibc': ['wcs', 'wc'],
    'netbsd': ['p', 'c'],
    'newlib': ['s', 'c'],
    'openbsd': ['s', 'c'],
    'uClibc': ['s', 'c']
}

UB_MAP = {
    'memccpy': ([UB.MEMORY_OVERLAP], memccpy_args),
    'memcpy': ([UB.MEMORY_OVERLAP], memcpy_args),
    'stpncpy': ([UB.VALID_POINTER_VAL], stpncpy_args),
    'strlen': ([UB.VALID_POINTER_VAL], strlen_args),
    'strnlen': ([UB.VALID_POINTER_VAL], strnlen_args),
    'swab': ([UB.EVEN_ARG], swab_args),
    'wcschr': ([UB.VALID_POINTER_VAL], wcschr_args)
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
            with open(f'assumes/{fname}-{lib}.assumes', 'w') as fp:
                s = ''
                for ub in ub_list:
                    s += get_assume_string(ub, libargs[lib])
                s += '=done'
                fp.write(s)

if __name__ == '__main__':
    gen_assumes()