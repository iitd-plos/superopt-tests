import glob
import os.path
import shutil

libraries = ['dietlibc', 'freebsd', 'glibc', 'klibc', 'musl', 'netbsd', 'newlib', 'openbsd', 'uClibc']

BENCHMARKS = [
    'memccpy', 'memcmp', 'memcpy', 'memmove', 'memrchr', 'memset', 'bcopy', 'bcmp',
    'stpcpy', 'strcasecmp', 'strchr', 'strcmp', 'strcpy', 'strcspn', 'strlcpy', 'strlen', 'strncasecmp', 'strncmp', 'strpbrk', 'strrchr', 'strsep', 'strspn', 'swab',
    'wcscat', 'wcschr', 'wcscmp', 'wcscpy', 'wcslen', 'wcsncat', 'wcsncmp', 'wcsncpy', 'wcsrchr', 'wcsstr',
    'wmemcmp', 'wmemcpy', 'wmemset', 'wcscasecmp', 'wcslcpy', 'wcsncasecmp', 'wcspbrk', 'wmemmove', 'wcsxfrm', 'wcscspn', 'wcsspn', 'wcstok', 'wmemchr', 'wmemset',
    'strcat', 'strstr', 'memchr', 'ltostr', 'lltostr', 'atoi', 'atol', 'bsearch', 'cfsetispeed', 'memmem', 'stpncpy', 'strcat', 'strdup', 'strlcat', 'strncat', 'strncpy', 'strnlen', 'strtoul', 'strverscmp', 'timingsafe_bcmp', 'timingsafe_memcmp', 'tolower', 'toupper',
    'isalnum', 'isalpha', 'isblank', 'iscntrl', 'isdigit', 'isgraph', 'islower', 'isprint', 'ispunct', 'isspace', 'isupper', 'isxdigit', 'tolower', 'toupper', 'qsort', 'mblen', 'mbtowc', 'wctomb', 'mbstowcs', 'wcstombs', 'strxfrm', 'strtok'
]

BENCHMARKS = [
    'wmemcmp', 'wmemcpy', 'wmemset', 'wcscasecmp', 'wcslcpy', 'wcsncasecmp', 'wcspbrk', 'wmemmove', 'wcsxfrm', 'wcscspn', 'wcsspn', 'wcstok', 'wmemchr', 'wmemset',
    'strcat', 'strstr', 'memchr', 'ltostr', 'lltostr', 'bsearch', 'memmem', 'stpncpy', 'strcat', 'strdup', 'strlcat', 'strncat', 'strncpy', 'strnlen', 'strtoul', 'strverscmp',
    'qsort', 'mblen', 'mbtowc', 'wctomb', 'mbstowcs', 'wcstombs', 'strxfrm', 'strtok'
]

def find_files():
    for i, fname in enumerate(BENCHMARKS):
        for lib in libraries:
            # C benchmarks
            l = glob.glob(f'{lib}/**/{fname}.c', recursive=True)
            print(f'Found {len(l)} C functions for benchmark {fname} in library {lib} with paths = {l}')
            if len(l) == 0:
                print(f'Benchmark {fname} not found in library {lib}')
            else:
                for i, path in enumerate(l):
                    if 'powerpc' in path or 'sparc' in path:
                        continue
                    with open(path, 'r', encoding='cp1250') as fp:
                        data = fp.read()
                        print(f'Content of File {path}:\n')
                        print(data)
                        print(path)
                        print(f'Copy this file? (Yes/No)')
                        prompt = input()
                        if prompt == 'No':
                            continue
                        print(f'Enter suffix for this file:')
                        suffix = input()
                        if suffix == '':
                            copy_path = os.path.join('benchmarks', 'C', f'{fname}_{lib}.c')
                        else:
                            copy_path = os.path.join('benchmarks', 'C', f'{fname}_{lib}_{suffix}.c')
                        shutil.copyfile(path, copy_path)
                        print(f'\tCopied {path} to {copy_path}')
            
            # Assembly benchmarks
            l = glob.glob(f'{lib}/**/{fname}.S', recursive=True)
            print(f'Found {len(l)} Assembly functions for benchmark {fname} in library {lib} with paths = {l}')
            if len(l) == 0:
                print(f'\tBenchmark {fname} not found in library {lib}')
            else:
                for i, path in enumerate(l):
                    if 'powerpc' in path or 'sparc' in path:
                        continue
                    with open(path, 'r', encoding='cp1250') as fp:
                        data = fp.read()
                        print(f'Content of File {path}:\n')
                        print(data)
                        print(path)
                        print(f'Copy this file? (Yes/No)')
                        prompt = input()
                        if prompt == 'No':
                            continue
                        print(f'Enter suffix for this file:')
                        suffix = input()
                        if suffix == '':
                            copy_path = os.path.join('benchmarks', 'Assembly', f'{fname}_{lib}.S')
                        else:
                            copy_path = os.path.join('benchmarks', 'Assembly', f'{fname}_{lib}_{suffix}.S')
                        shutil.copyfile(path, copy_path)
                        print(f'\tCopied {path} to {copy_path}')

if __name__ == "__main__":
    find_files()