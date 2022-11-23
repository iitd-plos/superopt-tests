/*
 * Copyright (C) 2002     Manuel Novoa III
 * Copyright (C) 2000-2005 Erik Andersen <andersen@uclibc.org>
 *
 * Licensed under the LGPL v2.1, see the file COPYING.LIB in this tarball.
 */

#include <features.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include <ctype.h>

# ifdef __UCLIBC_DO_XLOCALE
#  define TOLOWER(C) tolower_l((C), locale_arg)
# else
#  define TOLOWER(C) tolower((C))
# endif

int strcasecmp(register const char *s1, register const char *s2)
{
	int r = 0;

	while ( ((s1 == s2) ||
			 !(r = ((int)( TOLOWER(*((char *)s1))))
			   - TOLOWER(*((char *)s2))))
			&& (++s2, *s1++));

	return r;
}
