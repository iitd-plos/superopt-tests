#include <wchar.h>

wchar_t* wcsncpy(wchar_t *restrict dest, const wchar_t *restrict src, size_t n) {
  wchar_t* orig=dest;
  for (; dest<orig+n && (*dest=*src); ++src,++dest) ;
  for (; dest<orig+n; ++dest) *dest=0;
  return orig;
}
