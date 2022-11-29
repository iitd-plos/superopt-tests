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

wchar_t *wmemmove(wchar_t *s1, const wchar_t *s2, size_t n)
{
	register wchar_t *s = (wchar_t *) s1;
	register const wchar_t *p = (const wchar_t *) s2;

	if (p >= s) {
		while (n) {
			*s++ = *p++;
			--n;
		}
	} else {
		while (n) {
			--n;
			s[n] = p[n];
		}
	}

	return s1;
}

