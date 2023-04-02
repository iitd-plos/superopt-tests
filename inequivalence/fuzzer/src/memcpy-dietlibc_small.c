/* fast memcpy -- Copyright (C) 2003 Thomas M. Ogrisegg <tom@hi-tek.fnord.at> */

#include <string.h>
#include <stdint.h>
#include "dietstring.h"

void *
memcpy_dietlibc_small (void *dst, const void *src, size_t n)
{
    void           *res = dst;
    unsigned char  *c1, *c2;
	/* WANT_SMALL_STRING_ROUTINES */
    c1 = (unsigned char *) dst;
    c2 = (unsigned char *) src;
    while (n--) *c1++ = *c2++;
    return (res);
}