/*
 * Copyright (C) 2000-2005 Erik Andersen <andersen@uclibc.org>
 *
 * Licensed under the LGPL v2.1, see the file COPYING.LIB in this tarball.
 */

#define WANT_WIDE

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

# include <wchar.h>
# include <wctype.h>

int wcscmp_uClibc(register const wchar_t *s1, register const wchar_t *s2)
{
	while (*((unsigned int *)s1) == *((unsigned int *)s2)) {
		if (!*s1++) {
			return 0;
		}
		++s2;
	}

	return (*((unsigned int *)s1) < *((unsigned int *)s2)) ? -1 : 1;
}
