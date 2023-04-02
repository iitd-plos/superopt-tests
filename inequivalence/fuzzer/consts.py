memccpy_prototype = """void *memccpy_{}(void *dest, const void *src, int c, size_t n)
{{
    return memccpy(dest, src, c, n);
}}"""

memchr_prototype = """void *memchr_{}(const void *s, int c, size_t n)
{{
    return memchr(s, c, n);
}}"""

memcpy_prototype = """void *memcpy_{}(void *dest, const void *src, size_t n)
{{
    return memcpy(dest, src, n);
}}"""

memrchr_prototype = """void *memrchr_{}(const void *s, int c, size_t n)
{{
    return memrchr(s, c, n);
}}"""

stpncpy_prototype = """char *stpncpy_{}(char *dest, const char *src, size_t n)
{{
    return stpncpy(dest, src, n);
}}"""

strcasecmp_prototype = """int strcasecmp_{}(const char *s1, const char *s2)
{{
    return strcasecmp(s1, s2);
}}"""

strcmp_prototype = """int strcmp_{}(const char *s1, const char *s2)
{{
    return strcmp(s1, s2);
}}"""

strlcpy_prototype = """size_t strlcpy_{}(char *dest, const char *src, size_t size)
{{
    return strlcpy(dest, src, size);
}}"""

strlen_prototype = """size_t strlen_{}(const char *s)
{{
    return strlen(s);
}}"""

strncasecmp_prototype = """int strncasecmp_{}(const char *s1, const char *s2, size_t n)
{{
    return strncasecmp(s1, s2, n);
}}"""

strrchr_prototype = """char *strrchr_{}(const char *s, int c)
{{
    return strrchr(s, c);
}}"""

swab_prototype = """void swab_{}(const void *from, void *to, ssize_t n)
{{
    swab(from, to, n);
}}"""

wcschr_prototype = """wchar_t *wcschr_{}(const wchar_t *wcs, wchar_t wc)
{{
    return wcschr(wcs, wc);
}}"""

wcscmp_prototype = """int wcscmp_{}(const wchar_t *s1, const wchar_t *s2)
{{
    return wcscmp(s1, s2);
}}"""

wcsncmp_prototype = """int wcsncmp_{}(const wchar_t *s1, const wchar_t *s2, size_t n)
{{
    return wcsncmp(s1, s2, n);
}}"""

wcsrchr_prototype = """wchar_t *wcsrchr_{}(const wchar_t *wcs, wchar_t wc)
{{
    return wcsrchr(wcs, wc);
}}"""

wcsstr_prototype = """wchar_t *wcsstr_{}(const wchar_t *haystack, const wchar_t *needle)
{{
    return wcsstr(haystack, needle);
}}"""

wmemcmp_prototype = """int wmemcmp_{}(const wchar_t *s1, const wchar_t *s2, size_t n)
{{
    return wmemcmp(s1, s2, n);
}}
"""

def get_prototype(func_prototype: str):
    prot = func_prototype.splitlines()[0]
    prot += ';'
    return prot

C_BOILERPLATE = """#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <wchar.h>
#include <time.h>
#include <unistd.h>
"""

HARNESS_BOILERPLATE = C_BOILERPLATE + '#include "fuzz_harness.h"\n'

memccpy_harness = """
int main(int argc, char** argv)
{{
    int c;
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_memccpy(argc, argv, mem, &dest_offset, &src_offset, &c, &n)) {{
        return 1;
    }}
    char mem_initial[VMEM_SIZE], final_mem_{0}[VMEM_SIZE], final_mem_{1}[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_{0} = memccpy_{0}(mem + dest_offset, mem + src_offset, c, n);
    memcpy(final_mem_{0}, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_{1} = memccpy_{1}(mem + dest_offset, mem + src_offset, c, n);
    memcpy(final_mem_{1}, mem, VMEM_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0); 
    }}
    if (!mem_eq(final_mem_{0}, final_mem_{1}, VMEM_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memccpy(argc, argv, dest, src, &c, &n)) {{
        return 1;
    }}
    char dest_initial[MAX_SIZE], final_dest_{0}[MAX_SIZE], final_dest_{1}[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_{0} = memccpy_{0}(dest, src, c, n);
    memcpy(final_dest_{0}, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_{1} = memccpy_{1}(dest, src, c, n);
    memcpy(final_dest_{1}, dest, MAX_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    if (!mem_eq(final_dest_{0}, final_dest_{1}, MAX_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #endif
    
    return 0;
}}\n"""

memchr_harness = """
int main(int argc, char** argv)
{{
    char s[MAX_SIZE];
    int c;
    size_t n;

    if (fuzz_harness_memchr(argc, argv, s, &c, &n)) {{
        return 1;
    }}

    const void *ret_{0} = memchr_{0}(s, c, n);
    const void *ret_{1} = memchr_{1}(s, c, n);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

memcpy_harness = """
int main(int argc, char** argv)
{{
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_memcpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {{
        return 1;
    }}
    char mem_initial[VMEM_SIZE], final_mem_{0}[VMEM_SIZE], final_mem_{1}[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_{0} = memcpy_{0}(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_{0}, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_{1} = memcpy_{1}(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_{1}, mem, VMEM_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0); 
    }}
    if (!mem_eq(final_mem_{0}, final_mem_{1}, VMEM_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memcpy(argc, argv, dest, src, &n)) {{
        return 1;
    }}
    char dest_initial[MAX_SIZE], final_dest_{0}[MAX_SIZE], final_dest_{1}[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_{0} = memcpy_{0}(dest, src, n);
    memcpy(final_dest_{0}, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_{1} = memcpy_{1}(dest, src, n);
    memcpy(final_dest_{1}, dest, MAX_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    if (!mem_eq(final_dest_{0}, final_dest_{1}, MAX_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #endif
    
    return 0;
}}\n"""

memrchr_harness = """
int main(int argc, char** argv)
{{
    char s[MAX_SIZE];
    int c;
    size_t n;

    if (fuzz_harness_memrchr(argc, argv, s, &c, &n)) {{
        return 1;
    }}

    const void* ret_{0} = memrchr_{0}(s, c, n);
    const void *ret_{1} = memrchr_{1}(s, c, n);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

stpncpy_harness = """
int main(int argc, char** argv)
{{
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_stpncpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {{
        return 1;
    }}
    char mem_initial[VMEM_SIZE], final_mem_{0}[VMEM_SIZE], final_mem_{1}[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_{0} = stpncpy_{0}(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_{0}, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_{1} = stpncpy_{1}(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_{1}, mem, VMEM_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0); 
    }}
    if (!mem_eq(final_mem_{0}, final_mem_{1}, VMEM_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_stpncpy(argc, argv, dest, src, &n)) {{
        return 1;
    }}
    char dest_initial[MAX_SIZE], final_dest_{0}[MAX_SIZE], final_dest_{1}[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_{0} = stpncpy_{0}(dest, src, n);
    memcpy(final_dest_{0}, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_{1} = stpncpy_{1}(dest, src, n);
    memcpy(final_dest_{1}, dest, MAX_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    if (!mem_eq(final_dest_{0}, final_dest_{1}, MAX_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #endif
    
    return 0;
}}\n"""

strcasecmp_harness = """
int main(int argc, char** argv)
{{
    char s1[MAX_SIZE], s2[MAX_SIZE];

    if (fuzz_harness_strcasecmp(argc, argv, s1, s2)) {{
        return 1;
    }}

    const int ret_{0} = strcasecmp_{0}(s1, s2);
    const int ret_{1} = strcasecmp_{1}(s1, s2);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

strcmp_harness = """
int main(int argc, char** argv)
{{
    char s1[MAX_SIZE], s2[MAX_SIZE];

    if (fuzz_harness_strcmp(argc, argv, s1, s2)) {{
        return 1;
    }}

    const int ret_{0} = strcmp_{0}(s1, s2);
    const int ret_{1} = strcmp_{1}(s1, s2);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

strlcpy_harness = """
int main(int argc, char** argv)
{{
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_strlcpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {{
        return 1;
    }}
    char mem_initial[VMEM_SIZE], final_mem_{0}[VMEM_SIZE], final_mem_{1}[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const size_t ret_{0} = strlcpy_{0}(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_{0}, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const size_t ret_{1} = strlcpy_{1}(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_{1}, mem, VMEM_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0); 
    }}
    if (!mem_eq(final_mem_{0}, final_mem_{1}, VMEM_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_strlcpy(argc, argv, dest, src, &n)) {{
        return 1;
    }}
    char dest_initial[MAX_SIZE], final_dest_{0}[MAX_SIZE], final_dest_{1}[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const size_t ret_{0} = strlcpy_{0}(dest, src, n);
    memcpy(final_dest_{0}, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const size_t ret_{1} = strlcpy_{1}(dest, src, n);
    memcpy(final_dest_{1}, dest, MAX_SIZE);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    if (!mem_eq(final_dest_{0}, final_dest_{1}, MAX_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #endif
    
    return 0;
}}\n"""

strlen_harness = """
int main(int argc, char** argv)
{{
    char s[MAX_SIZE];

    if (fuzz_harness_strlen(argc, argv, s)) {{
        return 1;
    }}

    const size_t ret_{0} = strlen_{0}(s);
    const size_t ret_{1} = strlen_{1}(s);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

strncasecmp_harness = """
int main(int argc, char** argv)
{{
    char s1[MAX_SIZE], s2[MAX_SIZE];
    size_t n;

    if (fuzz_harness_strncasecmp(argc, argv, s1, s2, &n)) {{
        return 1;
    }}

    const int ret_{0} = strncasecmp_{0}(s1, s2, n);
    const int ret_{1} = strncasecmp_{1}(s1, s2, n);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

strrchr_harness = """
int main(int argc, char** argv)
{{
    char s[MAX_SIZE];
    int c;

    if (fuzz_harness_strrchr(argc, argv, s, &c)) {{
        return 1;
    }}

    const char *ret_{0} = strrchr_{0}(s, c);
    const char *ret_{1} = strrchr_{1}(s, c);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

swab_harness = """
int main(int argc, char** argv)
{{
    ssize_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_swab(argc, argv, mem, &dest_offset, &src_offset, &n)) {{
        return 1;
    }}
    char mem_initial[VMEM_SIZE], final_mem_{0}[VMEM_SIZE], final_mem_{1}[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    swab_{0}(mem + src_offset, mem + dest_offset, n);
    memcpy(final_mem_{0}, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    swab_{1}(mem + src_offset, mem + dest_offset, n);
    memcpy(final_mem_{1}, mem, VMEM_SIZE);

    if (!mem_eq(final_mem_{0}, final_mem_{1}, VMEM_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_swab(argc, argv, dest, src, &n)) {{
        return 1;
    }}
    char dest_initial[MAX_SIZE], final_dest_{0}[MAX_SIZE], final_dest_{1}[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    swab_{0}(src, dest, n);
    memcpy(final_dest_{0}, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    swab_{1}(src, dest, n);
    memcpy(final_dest_{1}, dest, MAX_SIZE);

    if (!mem_eq(final_dest_{0}, final_dest_{1}, MAX_SIZE)) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    #endif
    
    return 0;
}}\n"""

wcschr_harness = """
int main(int argc, char** argv)
{{
    wchar_t wcs[MAX_SIZE / WIDE_CHAR_WIDTH];
    wchar_t wc;

    if (fuzz_harness_wcschr(argc, argv, wcs, &wc)) {{
        return 1;
    }}

    const wchar_t *ret_{0} = wcschr_{0}(wcs, wc);
    const wchar_t *ret_{1} = wcschr_{1}(wcs, wc);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

wcscmp_harness = """
int main(int argc, char** argv)
{{
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];

    if (fuzz_harness_wcscmp(argc, argv, s1, s2)) {{
        return 1;
    }}

    const int ret_{0} = wcscmp_{0}(s1, s2);
    const int ret_{1} = wcscmp_{1}(s1, s2);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

wcsncmp_harness = """
int main(int argc, char** argv)
{{
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];
    size_t n;

    if (fuzz_harness_wcsncmp(argc, argv, s1, s2, &n)) {{
        return 1;
    }}

    const int ret_{0} = wcsncmp_{0}(s1, s2, n);
    const int ret_{1} = wcsncmp_{1}(s1, s2, n);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

wcsrchr_harness = """
int main(int argc, char** argv)
{{
    wchar_t wcs[MAX_SIZE / WIDE_CHAR_WIDTH];
    wchar_t wc;

    if (fuzz_harness_wcsrchr(argc, argv, wcs, &wc)) {{
        return 1;
    }}

    const wchar_t *ret_{0} = wcsrchr_{0}(wcs, wc);
    const wchar_t *ret_{1} = wcsrchr_{1}(wcs, wc);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

wcsstr_harness = """
int main(int argc, char** argv)
{{
    wchar_t haystack[MAX_SIZE / WIDE_CHAR_WIDTH], needle[MAX_SIZE / WIDE_CHAR_WIDTH];

    if (fuzz_harness_wcsstr(argc, argv, haystack, needle)) {{
        return 1;
    }}

    const wchar_t *ret_{0} = wcsstr_{0}(haystack, needle);
    const wchar_t *ret_{1} = wcsstr_{1}(haystack, needle);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""

wmemcmp_harness = """
int main(int argc, char** argv)
{{
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];
    size_t n;

    if (fuzz_harness_wmemcmp(argc, argv, s1, s2, &n)) {{
        return 1;
    }}

    const int ret_{0} = wmemcmp_{0}(s1, s2, n);
    const int ret_{1} = wmemcmp_{1}(s1, s2, n);

    if (ret_{0} != ret_{1}) {{
        fprintf(stderr, "Fatal: found an inequivalence between the {0} and {1} implementations!\\n");
        assert(0);
    }}
    return 0;
}}\n"""