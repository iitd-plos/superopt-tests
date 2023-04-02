/* fast strcmp -- Copyright (C) 2003 Thomas M. Ogrisegg <tom@hi-tek.fnord.at> */
#include <string.h>
#include "dietstring.h"
#include <stdint.h>

int
strcmp_dietlibc_small (const char *s1, const char *s2)
{

    while (*s1 && *s1 == *s2)
        s1++, s2++;
    return (*s1 - *s2);
}