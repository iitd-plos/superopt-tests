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

int wcsncmp_uClibc(register const wchar_t *s1, register const wchar_t *s2, size_t n)
{
	while (n && (*((unsigned int *)s1) == *((unsigned int *)s2))) {
		if (!*s1++) {
			return 0;
		}
		++s2;
		--n;
	}
	unsigned int c1 = *((unsigned int *)s1), c2 = *((unsigned int *)s2);
	// return (n == 0) ? 0 : (*((unsigned int *)s1) - *((unsigned int *)s2));
	return (n == 0) ? 0 : (c1 - c2 < 0 ? -1 : (c1 - c2 > 0 ? 1 : 0));
}
