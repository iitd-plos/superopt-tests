#include <wchar.h>

int wcscmp_dietlibc(const wchar_t* a,const wchar_t* b) {
  while (*a && *a == *b)
    a++, b++;
  // return (*a - *b)
  return *a - *b < 0 ? -1 : (*a - *b > 0 ? 1 : 0);
}