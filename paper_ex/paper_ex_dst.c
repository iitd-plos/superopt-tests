#include "dietstring.h"
#include <stdint.h>

char *strcpy (char *dest, const char *src)
{
    char           *res = dest;
    int             tmp;
    unsigned long   l;

    if (UNALIGNED(dest, src)) {
      while ((*dest++ = *src++));
      return (res);
    }
    // STRALIGN output varies from 8 to 0.
    if ((tmp = STRALIGN(dest))) {
      while (tmp-- && (*dest++ = *src++));
      if (tmp != -1) return (res);
    }

    while (1) {
      l = *(const unsigned long *) src;
      if (((l - MKW(0x1ul)) & ~l) & MKW(0x80ul)) {
          while ((*dest++ = GFC(l))) INCSTR(l);
          return (res);
  	}
    *(unsigned long *) dest = l;
    src += sizeof(unsigned long);
    dest += sizeof(unsigned long);
    }
}
