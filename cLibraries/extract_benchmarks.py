import glob
import os.path
import shutil

string_lib_paths = {
    "dietlibc": "dietlibc/lib/",
    "glibc": "glibc/string/",
    "klibc": "klibc/usr/klibc/",
    "musl": "musl/src/string/",
    "newlib": "newlib/newlib/libc/string/",
    "uClibc": "uClibc/libc/string/",
    "freebsd": "freebsd/lib/libc/string/",
    "netbsd": "netbsd/lib/libc/string/",
    "openbsd": "openbsd/lib/libc/string/"
    }


# klibc does not have wide string library
ws_lib_paths = {
    "dietlibc": "dietlibc/lib/",
    "glibc": "glibc/wcsmbs/",
    "musl": "musl/src/string/",
    "newlib": "newlib/newlib/libc/string/",
    "uClibc": "uClibc/libc/string/",
    "freebsd": "freebsd/lib/libc/string/",
    "netbsd": "netbsd/lib/libc/string/",
    "openbsd": "openbsd/lib/libc/libc/string/"
    }

STRING_MEM_BENCHMARKS = ['memccpy', 'memcmp', 'memcpy', 'memmove', 'memrchr', 'memset', 'stpcpy', 'strcasecmp', 'strchr', 'strcmp', 'strcpy', 'strcspn', 'strlcpy', 'strlen', 'strncasecmp', 'strncmp', 'strpbrk', 'strrchr', 'strsep', 'strspn', 'swab']
WS_BENCHMARKS = ['wcscat', 'wcschr', 'wcscmp', 'wcscpy', 'wcslen', 'wcsncat', 'wcsncmp', 'wcsncpy', 'wcsrchr', 'wcsstr']

def find_files():
    for fname in STRING_MEM_BENCHMARKS:
        for lib in string_lib_paths:
            l = glob.glob(f'{fname}.c', recursive=True, root_dir=string_lib_paths[lib])
            # assert len(l) <= 1, f'Files found: {l}'
            if len(l) > 0:
                # print(f'{lib}: {os.path.join(string_lib_paths[lib], l[0])}')
                benchmark_path = os.path.join(string_lib_paths[lib], l[0])
                copy_path = os.path.join('benchmarks/', f'{fname}_{lib}.c')
                shutil.copyfile(benchmark_path, copy_path)
            else:
                print(f'WARNING: function {fname} not found in {lib}')
    
    for fname in WS_BENCHMARKS:
        for lib in ws_lib_paths:
            l = glob.glob(f'{fname}.c', recursive=True, root_dir=ws_lib_paths[lib])
            # assert len(l) <= 1, f'Files found: {l}'
            if len(l) > 0:
                # print(f'{lib}: {os.path.join(ws_lib_paths[lib], l[0])}')
                benchmark_path = os.path.join(ws_lib_paths[lib], l[0])
                copy_path = os.path.join('benchmarks/', f'{fname}_{lib}.c')
                shutil.copyfile(benchmark_path, copy_path)
            else:
                print(f'function {fname} not found in {lib}')

if __name__ == "__main__":
    find_files()