#include <wchar.h>

wchar_t* wcsrchr_dietlibc(const wchar_t *wcs, wchar_t wc) {
  wchar_t* last=0;
  for (; *wcs; ++wcs)
    if (*wcs == wc)
      last=(wchar_t*)wcs;
  return last;
}