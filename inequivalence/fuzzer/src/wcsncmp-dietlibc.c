#include <wchar.h>

int wcsncmp_dietlibc(const wchar_t *s1, const wchar_t *s2, size_t n) {
  size_t i;
  for (i=0; i<n && s1[i]==s2[i]; ++i) ;
  // return s1[i]-s2[i];
  return s1[i]-s2[i] < 0 ? -1 : (s1[i]-s2[i] > 0 ? 1 : 0);
}