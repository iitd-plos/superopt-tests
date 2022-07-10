/* fast strcpy -- Copyright (C) 2003 Thomas M. Ogrisegg <tom@hi-tek.fnord.at> */
#include <string.h>
#include "dietstring.h"
#include <stdint.h>

char *
strcpy (char *s1, const char *s2)
{
    char           *res = s1;
    while ((*s1++ = *s2++));
    return (res);
}
