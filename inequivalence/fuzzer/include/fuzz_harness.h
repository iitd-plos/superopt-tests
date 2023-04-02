#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <wchar.h>
#include <time.h>
#include <unistd.h>
#include "bench_prototype.h"

#define MAX_SIZE 256
#define WIDE_CHAR_WIDTH 4
#define VMEM_SIZE MAX_SIZE * 5

int read_string(char* s, size_t size, FILE* fp);
int read_c(int *c, FILE* fp);
int read_n(size_t* n, int bound, FILE* fp);
int read_wc(wchar_t* wc, FILE* fp);
int populate_memory(char* mem, char* dest, char* src, int* dest_offset, int* src_offset);
int read_wide_string(wchar_t* ws, size_t size, FILE* fp);
bool mem_eq(char* s1, char* s2, size_t n);
int fuzz_harness_memccpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, int* c, size_t* n);
#else
(int argc, char** argv, char* dest, char* src, int* c, size_t* n);
#endif
int fuzz_harness_memchr(int argc, char** argv, char* s, int* c, size_t* n);
int fuzz_harness_memcpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n);
#else
(int argc, char** argv, char* dest, char* src, size_t* n);
#endif
int fuzz_harness_memrchr(int argc, char** argv, char* s, int* c, size_t* n);
int fuzz_harness_strlen(int argc, char** argv, char* s);
int fuzz_harness_stpncpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n);
#else
(int argc, char** argv, char* dest, char* src, size_t* n);
#endif
int fuzz_harness_strcasecmp(int argc, char** argv, char* s1, char*s2);
int fuzz_harness_strncasecmp(int argc, char** argv, char* s1, char*s2, size_t* n);
int fuzz_harness_strrchr(int argc, char** argv, char* s, int* c);
int fuzz_harness_strcmp(int argc, char** argv, char* s1, char* s2);
int fuzz_harness_strlcpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n);
#else
(int argc, char** argv, char* dest, char* src, size_t* n);
#endif
int fuzz_harness_swab
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* src_offset, int* dest_offset, size_t* n);
#else
(int argc, char** argv, char* from, char* to, ssize_t* n);
#endif
int fuzz_harness_wcschr(int argc, char** argv, wchar_t* wcs, wchar_t* wc);
int fuzz_harness_wcscmp(int argc, char** argv, wchar_t* s1, wchar_t* s2);
int fuzz_harness_wcsncmp(int argc, char** argv, wchar_t* s1, wchar_t* s2, size_t* n);
int fuzz_harness_wcsrchr(int argc, char** argv, wchar_t* wcs, wchar_t* wc);
int fuzz_harness_wcsstr(int argc, char** argv, wchar_t* haystack, wchar_t* needle);
int fuzz_harness_wmemcmp(int argc, char** argv, wchar_t* s1, wchar_t* s2, size_t* n);