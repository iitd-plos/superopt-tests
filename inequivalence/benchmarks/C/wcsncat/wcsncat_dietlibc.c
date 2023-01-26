#include <wchar.h>

wchar_t* wcsncat(wchar_t *restrict dest, const wchar_t *restrict src,size_t n) {
  wchar_t* orig=dest;
  size_t i;
  while (*dest) ++dest;
  for (i=0; i<n && src[i]; ++i) dest[i]=src[i];
  dest[i]=0;
  return orig;
}
