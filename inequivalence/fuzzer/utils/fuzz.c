#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <locale.h>
#include "fuzz_harness.h"

int main(int argc, char** argv)
{
  if (argc != 3) {
    fprintf(stderr, "%s <filename> <function-name>\n", argv[0]);
    return 1;
  }
  argc--;
  setlocale(LC_ALL, "");

  if (strcmp(argv[2], "memccpy") == 0) {
    int c;
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_memccpy(argc, argv, mem, &dest_offset, &src_offset, &c, &n)) {
      return 1;
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memccpy(argc, argv, dest, src, &c, &n)) {
      return 1;
    }
    #endif
  } else if (strcmp(argv[2], "memchr") == 0) {
    char s[MAX_SIZE];
    int c;
    size_t n;
    if (fuzz_harness_memchr(argc, argv, s, &c, &n)) {
      return 1;
    }
  } else if (strcmp(argv[2], "memcpy") == 0) {
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_memcpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {
      return 1;
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memcpy(argc, argv, dest, src, &n)) {
      return 1;
    }
    #endif
  } else if (strcmp(argv[2], "memrchr") == 0) {
    char s[MAX_SIZE];
    int c;
    size_t n;
    if (fuzz_harness_memrchr(argc, argv, s, &c, &n)) {
      return 1;
    }
  } else if (strcmp(argv[2], "strlen") == 0) {
    char s[MAX_SIZE];
    if (fuzz_harness_strlen(argc, argv, s)) {
      return 1;
    }
  } else if (strcmp(argv[2], "stpncpy") == 0) {
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_stpncpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {
      return 1;
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_stpncpy(argc, argv, dest, src, &n)) {
      return 1;
    }
    #endif
  } else if (strcmp(argv[2], "strcasecmp") == 0) {
    char s1[MAX_SIZE], s2[MAX_SIZE];
    if (fuzz_harness_strcasecmp(argc, argv, s1, s2)) {
      return 1;
    }
  } else if (strcmp(argv[2], "strncasecmp") == 0) {
    size_t n;
    char s1[MAX_SIZE], s2[MAX_SIZE];
    if (fuzz_harness_strncasecmp(argc, argv, s1, s2, &n)) {
      return 1;
    }
  } else if (strcmp(argv[2], "strrchr") == 0) {
    char s[MAX_SIZE];
    int c;
    if (fuzz_harness_strrchr(argc, argv, s, &c)) {
      return 1;
    }
  } else if (strcmp(argv[2], "strcmp") == 0) {
    char s1[MAX_SIZE], s2[MAX_SIZE];
    if (fuzz_harness_strcmp(argc, argv, s1, s2)) {
      return 1;
    }
  } else if (strcmp(argv[2], "strlcpy") == 0) {
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_strlcpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {
      return 1;
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_strlcpy(argc, argv, dest, src, &n)) {
      return 1;
    }
    #endif
  } else if (strcmp(argv[2], "swab") == 0) {
    ssize_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_swab(argc, argv, mem, &dest_offset, &src_offset, &n)) {
      return 1;
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_swab(argc, argv, dest, src, &n)) {
      return 1;
    }
    #endif
  } else if (strcmp(argv[2], "wcschr") == 0) {
    wchar_t wcs[MAX_SIZE / WIDE_CHAR_WIDTH];
    wchar_t wc;
    if (fuzz_harness_wcschr(argc, argv, wcs, &wc)) {
      return 1;
    }
  } else if (strcmp(argv[2], "wcscmp") == 0) {
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];
    if (fuzz_harness_wcscmp(argc, argv, s1, s2)) {
      return 1;
    }
  } else if (strcmp(argv[2], "wcsncmp") == 0) {
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];
    size_t n;
    if (fuzz_harness_wcsncmp(argc, argv, s1, s2, &n)) {
      return 1;
    }
  } else if (strcmp(argv[2], "wcsrchr") == 0) {
    wchar_t wcs[MAX_SIZE / WIDE_CHAR_WIDTH];
    wchar_t wc;
    if (fuzz_harness_wcsrchr(argc, argv, wcs, &wc)) {
      return 1;
    }
  } else if (strcmp(argv[2], "wcsstr") == 0) {
    wchar_t haystack[MAX_SIZE / WIDE_CHAR_WIDTH], needle[MAX_SIZE / WIDE_CHAR_WIDTH];
    if (fuzz_harness_wcsstr(argc, argv, haystack, needle)) {
      return 1;
    }
  } else if (strcmp(argv[2], "wmemcmp") == 0) {
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];
    size_t n;
    if (fuzz_harness_wcsncmp(argc, argv, s1, s2, &n)) {
      return 1;
    }
  } else {
    fprintf(stderr, "Unrecognized function %s\n", argv[2]);
    return 1;
  }
  
  return 0;
}