#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <wchar.h>
#include <time.h>
#include <locale.h>
#include <unistd.h>
#include "fuzz_harness.h"

int read_string(char* s, size_t size, FILE* fp)
{
  bool eof = !fgets(s, size, fp);
  if (eof) {
    fprintf(stderr, "Premature end of file.\n");
    return 1;
  }
  char* newline = strchr(s, '\n');
  if (!newline) {
    fprintf(stderr, "String greater than %ld characters not supported.\n", size-1);
    return 1;
  }
  *newline = '\0';
  return 0;
}

int read_c(int *c, FILE* fp)
{
  char cstr[16];
  bool eof = !fgets(cstr, sizeof(cstr), fp);
  if (eof) {
    fprintf(stderr, "Premature end of file.\n");
    return 1;
  }
  if (!strchr(cstr, '\n')) {
    fprintf(stderr, "Character C greater than 16 characters not supported.\n");
    return 1;
  }
  #ifdef CHARC 
  *c = cstr[0];
  #else
  *c = atoi(cstr);
  #endif
  
  return 0;
}

int read_n(size_t* n, int bound, FILE* fp)
{
  char nstr[16];
  bool eof = !fgets(nstr, sizeof(nstr), fp);
  if (eof) {
    fprintf(stderr, "Premature end of file.\n");
    return 1;
  }
  if (!strchr(nstr, '\n')) {
    fprintf(stderr, "Size N greater than 16 characters not supported.\n");
    return 1;
  }
  *n = atoi(nstr);
  if (*n >= bound) {
    fprintf(stderr, "N too large.\n");
    return 1;
  }

  return 0;
}

int read_wc(wchar_t* wc, FILE* fp)
{
  char wcstr[16];
  bool eof = !fgets(wcstr, sizeof(wcstr), fp);
  if (eof) {
    fprintf(stderr, "Premature end of file.\n");
    return 1;
  }
  if (!strchr(wcstr, '\n')) {
    fprintf(stderr, "Size wc greater than 16 characters not supported.\n");
    return 1;
  }
  *wc = atoi(wcstr);

  return 0;
}

int populate_memory(char* mem, char* dest, char* src, int* dest_offset, int* src_offset)
{
  // mem: VMEM_SIZE, dest: MAX_SIZE, src: MAX_SIZE
  unsigned int pid = (unsigned int)getpid();
  srand((unsigned int)time(NULL) * pid);
  
  int dest_index = rand() % (VMEM_SIZE - MAX_SIZE + 1);
  *dest_offset = dest_index;
  printf("Populating destination memory starting at index %d.\n", dest_index);

  for (int i = 0; i < MAX_SIZE; ++i, ++dest_index) {
    mem[dest_index] = dest[i];
  }

  int src_index = rand() % (VMEM_SIZE - MAX_SIZE + 1);
  *src_offset = src_index;
  printf("Populating source memory starting at index %d.\n", src_index);

  for (int i = 0; i < MAX_SIZE; ++i, ++src_index) {
    mem[src_index] = src[i];
  }

  return 0;
}

int read_wide_string(wchar_t* ws, size_t size, FILE* fp)
{
  char* s = (char*)ws;
  bool eof = !fgets(s, size - 3, fp);
  if (eof) {
    fprintf(stderr, "Premature end of file.\n");
  }
  char* newline = strchr(s, '\n');
  if (!newline) {
    fprintf(stderr, "String greater than %ld characters not supported.\n", size-3);
    return 1;
  }

  int length = newline - s;
  printf("Length of read string = %d.\n", length);

  int padding = WIDE_CHAR_WIDTH - (length % WIDE_CHAR_WIDTH);
  for (int i = 0;  i < padding; ++i, ++newline) {
    *newline = '\0';
  }
  
  // Terminate with a wide-null character
  wchar_t* p = (wchar_t*)newline;
  *p = L'\0';

  return 0;
}

// checks if the first n bytes of s1 and s2 are equal
bool mem_eq(char* s1, char* s2, size_t n)
{
  for (int i = 0; i < n; ++i) {
    if (s1[i] != s2[i]) {
      return false;
    }
  }
  return true;
}

int fuzz_harness_memccpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, int* c, size_t* n)
#else
(int argc, char** argv, char* dest, char* src, int* c, size_t* n)
#endif
{
  char* filename;
  FILE *fp;
  #ifdef OVERLAP
  char dest[MAX_SIZE], src[MAX_SIZE];
  #endif

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(dest, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(src, MAX_SIZE, fp)) {
    return 1;
  }

  #ifdef OVERLAP
  if (populate_memory(mem, dest, src, dest_offset, src_offset)) {
    return 1;
  }
  #endif

  if (read_c(c, fp)) {
    return 1;
  }

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("dest (%p) = %s.\nsrc (%p) = %s.\nc = %c (%hhx, %hx).\nn = %zd.\n", dest, dest, src, src, *c, *c, *c, *n);
  printf("dest = ");
  for (int i = 0; dest[i]; i++) {
    printf(" %hhx", dest[i]);
  }
  printf("\n");

  printf("src = ");
  for (int i = 0; src[i]; i++) {
    printf(" %hhx", src[i]);
  }
  printf("\n");

  #ifdef OVERLAP
  printf("dest_offset = %d, src_offset = %d.\n", *dest_offset, *src_offset);
  printf("mem = ");
  for (int i = 0; i < VMEM_SIZE; i++) {
    printf(" %hhx", mem[i]);
  }
  printf("\n");
  #endif

  return 0;
}

int fuzz_harness_memchr(int argc, char** argv, char* s, int* c, size_t* n)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_c(c, fp)) {
    return 1;
  }

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("s (%p) = %s. c = %c (%hhx, %hx).\nn = %zd.\n", s, s, *c, *c, *c, *n);
  printf("s = ");
  for (int i = 0; s[i]; i++) {
    printf(" %hhx", s[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_memcpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n)
#else
(int argc, char** argv, char* dest, char* src, size_t* n)
#endif
{
  char* filename;
  FILE *fp;
  #ifdef OVERLAP
  char dest[MAX_SIZE], src[MAX_SIZE];
  #endif

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(dest, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(src, MAX_SIZE, fp)) {
    return 1;
  }

  #ifdef OVERLAP
  if (populate_memory(mem, dest, src, dest_offset, src_offset)) {
    return 1;
  }
  #endif

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("dest (%p) = %s.\nsrc (%p) = %s.\nn = %zd.\n", dest, dest, src, src, *n);
  printf("dest = ");
  for (int i = 0; dest[i]; i++) {
    printf(" %hhx", dest[i]);
  }
  printf("\n");

  printf("src = ");
  for (int i = 0; src[i]; i++) {
    printf(" %hhx", src[i]);
  }
  printf("\n");

  #ifdef OVERLAP
  printf("dest_offset = %d, src_offset = %d.\n", *dest_offset, *src_offset);
  printf("mem = ");
  for (int i = 0; i < VMEM_SIZE; i++) {
    printf(" %hhx", mem[i]);
  }
  printf("\n");
  #endif

  return 0;
}

int fuzz_harness_memrchr(int argc, char** argv, char* s, int* c, size_t* n)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_c(c, fp)) {
    return 1;
  }

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("s (%p) = %s. c = %c (%hhx, %hx). n = %zd.\n", s, s, *c, *c, *c, *n);
  printf("s = ");
  for (int i = 0; s[i]; i++) {
    printf(" %hhx", s[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_strlen(int argc, char** argv, char* s)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s, MAX_SIZE, fp)) {
    return 1;
  }

  printf("s (%p) = %s.\n", s, s);
  printf("s = ");
  for (int i = 0; s[i]; i++) {
    printf(" %hhx", s[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_stpncpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n)
#else
(int argc, char** argv, char* dest, char* src, size_t* n)
#endif
{
  char* filename;
  FILE *fp;
  #ifdef OVERLAP
  char dest[MAX_SIZE], src[MAX_SIZE];
  #endif

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(dest, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(src, MAX_SIZE, fp)) {
    return 1;
  }

  #ifdef OVERLAP
  if (populate_memory(mem, dest, src, dest_offset, src_offset)) {
    return 1;
  }
  #endif

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("dest (%p) = %s.\nsrc (%p) = %s.\nn = %zd.\n", dest, dest, src, src, *n);
  printf("dest = ");
  for (int i = 0; dest[i]; i++) {
    printf(" %hhx", dest[i]);
  }
  printf("\n");

  printf("src = ");
  for (int i = 0; src[i]; i++) {
    printf(" %hhx", src[i]);
  }
  printf("\n");

  #ifdef OVERLAP
  printf("dest_offset = %d, src_offset = %d.\n", *dest_offset, *src_offset);
  printf("mem = ");
  for (int i = 0; i < VMEM_SIZE; i++) {
    printf(" %hhx", mem[i]);
  }
  printf("\n");
  #endif

  return 0;
}

int fuzz_harness_strcasecmp(int argc, char** argv, char* s1, char*s2)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s1, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(s2, MAX_SIZE, fp)) {
    return 1;
  }

  printf("s1 (%p) = %s.\ns2 (%p) = %s.\n", s1, s1, s2, s2);
  printf("s1 = ");
  for (int i = 0; s1[i]; i++) {
    printf(" %hhx", s1[i]);
  }
  printf("\n");

  printf("s2 = ");
  for (int i = 0; s2[i]; i++) {
    printf(" %hhx", s2[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_strncasecmp(int argc, char** argv, char* s1, char*s2, size_t* n)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s1, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(s2, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("s1 (%p) = %s.\ns2 (%p) = %s.\nn = %zd.\n", s1, s1, s2, s2, *n);
  printf("s1 = ");
  for (int i = 0; s1[i]; i++) {
    printf(" %hhx", s1[i]);
  }
  printf("\n");

  printf("s2 = ");
  for (int i = 0; s2[i]; i++) {
    printf(" %hhx", s2[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_strrchr(int argc, char** argv, char* s, int* c)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_c(c, fp)) {
    return 1;
  }

  printf("s (%p) = %s. c = %c (%hhx, %hx).\n", s, s, *c, *c, *c);
  printf("s = ");
  for (int i = 0; s[i]; i++) {
    printf(" %hhx", s[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_strcmp(int argc, char** argv, char* s1, char* s2)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(s1, MAX_SIZE, fp)) {
    return 1;
  }

 if (read_string(s2, MAX_SIZE, fp)) {
  return 1;
 }

  printf("s1 (%p) = %s.\ns2 (%p) = %s.\n", s1, s1, s2, s2);
  printf("s1 = ");
  for (int i = 0; s1[i]; i++) {
    printf(" %hhx", s1[i]);
  }
  printf("\n");

  printf("s2 = ");
  for (int i = 0; s2[i]; i++) {
    printf(" %hhx", s2[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_strlcpy
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n)
#else
(int argc, char** argv, char* dest, char* src, size_t* n)
#endif
{
  char* filename;
  FILE *fp;
  #ifdef OVERLAP
  char dest[MAX_SIZE], src[MAX_SIZE];
  #endif

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(dest, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(src, MAX_SIZE, fp)) {
    return 1;
  }

  #ifdef OVERLAP
  if (populate_memory(mem, dest, src, dest_offset, src_offset)) {
    return 1;
  }
  #endif

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("dest (%p) = %s.\nsrc (%p) = %s.\nn = %zd.\n", dest, dest, src, src, *n);
  printf("dest = ");
  for (int i = 0; dest[i]; i++) {
    printf(" %hhx", dest[i]);
  }
  printf("\n");

  printf("src = ");
  for (int i = 0; src[i]; i++) {
    printf(" %hhx", src[i]);
  }
  printf("\n");

  #ifdef OVERLAP
  printf("dest_offset = %d, src_offset = %d.\n", *dest_offset, *src_offset);
  printf("mem = ");
  for (int i = 0; i < VMEM_SIZE; i++) {
    printf(" %hhx", mem[i]);
  }
  printf("\n");
  #endif

  return 0;
}

int fuzz_harness_swab
#ifdef OVERLAP
(int argc, char** argv, char* mem, int* dest_offset, int* src_offset, size_t* n)
#else
(int argc, char** argv, char* from, char* to, ssize_t* n)
#endif
{
  char* filename;
  FILE *fp;
  #ifdef OVERLAP
  char to[MAX_SIZE], from[MAX_SIZE];
  #endif

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_string(to, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_string(from, MAX_SIZE, fp)) {
    return 1;
  }

  #ifdef OVERLAP
  if (populate_memory(mem, to, from, dest_offset, src_offset)) {
    return 1;
  }
  #endif

  if (read_n(n, MAX_SIZE, fp)) {
    return 1;
  }

  printf("to (%p) = %s.\nfrom (%p) = %s.\nn = %zd.\n", to, to, from, from, *n);
  printf("to = ");
  for (int i = 0; to[i]; i++) {
    printf(" %hhx", to[i]);
  }
  printf("\n");

  printf("from = ");
  for (int i = 0; from[i]; i++) {
    printf(" %hhx", from[i]);
  }
  printf("\n");

  #ifdef OVERLAP
  printf("dest_offset = %d, src_offset = %d.\n", *dest_offset, *src_offset);
  printf("mem = ");
  for (int i = 0; i < VMEM_SIZE; i++) {
    printf(" %hhx", mem[i]);
  }
  printf("\n");
  #endif

  return 0;
}

int fuzz_harness_wcschr(int argc, char** argv, wchar_t* wcs, wchar_t* wc)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_wide_string(wcs, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_wc(wc, fp)) {
    return 1;
  }

  printf("wcs (%p, %ld) = %ls.\nwc = %d.\n", wcs, wcslen(wcs), wcs, *wc);
  printf("wcs = ");
  for (int i = 0; wcs[i]; i++) {
    printf(" %hhx", wcs[i]);
  }
  printf("\n");

  return 0;
}

int fuzz_harness_wcscmp(int argc, char** argv, wchar_t* s1, wchar_t* s2)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_wide_string(s1, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_wide_string(s2, MAX_SIZE, fp)) {
    return 1;
  }

  printf("s1 (%p, %ld) = %ls.\ns2 (%p, %ld) = %ls.\n", s1, wcslen(s1), s1, s2, wcslen(s2), s2);
  printf("s1 = ");
  for (int i = 0; s1[i]; i++) {
    printf(" %hhx", s1[i]);
  }
  printf("\n");

  printf("s2 = ");
  for (int i = 0; s2[i]; i++) {
    printf(" %hhx", s2[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_wcsncmp(int argc, char** argv, wchar_t* s1, wchar_t* s2, size_t* n)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_wide_string(s1, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_wide_string(s2, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_n(n, MAX_SIZE / WIDE_CHAR_WIDTH, fp)) {
    return 1;
  }

  printf("s1 (%p, %ld) = %ls.\ns2 (%p, %ld) = %ls.\nn = %zd\n", s1, wcslen(s1), s1, s2, wcslen(s2), s2, *n);
  printf("s1 = ");
  for (int i = 0; s1[i]; i++) {
    printf(" %hhx", s1[i]);
  }
  printf("\n");

  printf("s2 = ");
  for (int i = 0; s2[i]; i++) {
    printf(" %hhx", s2[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_wcsrchr(int argc, char** argv, wchar_t* wcs, wchar_t* wc)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_wide_string(wcs, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_wc(wc, fp)) {
    return 1;
  }

  printf("wcs (%p, %ld) = %ls.\nwc = %d.\n", wcs, wcslen(wcs), wcs, *wc);
  printf("wcs = ");
  for (int i = 0; wcs[i]; i++) {
    printf(" %hhx", wcs[i]);
  }
  printf("\n");

  return 0;
}

int fuzz_harness_wcsstr(int argc, char** argv, wchar_t* haystack, wchar_t* needle)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_wide_string(haystack, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_wide_string(needle, MAX_SIZE, fp)) {
    return 1;
  }

  printf("haystack (%p, %ld) = %ls.\nneedle (%p, %ld) = %ls.\n", haystack, wcslen(haystack), haystack, needle, wcslen(needle), needle);
  printf("haystack = ");
  for (int i = 0; haystack[i]; i++) {
    printf(" %d", haystack[i]);
  }
  printf("\n");

  printf("needle = ");
  for (int i = 0; needle[i]; i++) {
    printf(" %d", needle[i]);
  }
  printf("\n");
  return 0;
}

int fuzz_harness_wmemcmp(int argc, char** argv, wchar_t* s1, wchar_t* s2, size_t* n)
{
  char* filename;
  FILE *fp;

  if (argc != 2) {
    fprintf(stderr, "%s <input-file>\n", argv[0]);
    return 1;
  }
  filename = argv[1];
  fp = fopen(filename, "r"); /* should check the result */
  if (!fp) {
    fprintf(stderr, "Error opening file %s\n", filename);
    return 1;
  }

  if (read_wide_string(s1, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_wide_string(s2, MAX_SIZE, fp)) {
    return 1;
  }

  if (read_n(n, MAX_SIZE / WIDE_CHAR_WIDTH, fp)) {
    return 1;
  }

  printf("s1 (%p, %ld) = %ls.\ns2 (%p, %ld) = %ls.\nn = %zd\n", s1, wcslen(s1), s1, s2, wcslen(s2), s2, *n);
  printf("s1 = ");
  for (int i = 0; s1[i]; i++) {
    printf(" %hhx", s1[i]);
  }
  printf("\n");

  printf("s2 = ");
  for (int i = 0; s2[i]; i++) {
    printf(" %hhx", s2[i]);
  }
  printf("\n");
  return 0;
}