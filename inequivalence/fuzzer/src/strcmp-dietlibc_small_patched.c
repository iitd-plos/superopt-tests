/* fast strcmp -- Copyright (C) 2003 Thomas M. Ogrisegg <tom@hi-tek.fnord.at> */
#include <string.h>
#include "dietstring.h"
#include <stdint.h>

int
strcmp_dietlibc_small_patched (const char *s1, const char *s2)
{

    while (*s1 && *s1 == *s2)
        s1++, s2++;
    return (*(unsigned char*)s1 - *(unsigned char*)s2);
}