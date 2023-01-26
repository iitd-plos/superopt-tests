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

wchar_t *wmemchr(const wchar_t *s, wchar_t c, size_t n)
{
	register const unsigned int *r = (const unsigned int *) s;

	while (n) {
		if (*r == ((unsigned int)c)) {
			return (wchar_t *) r;	/* silence the warning */
		}
		++r;
		--n;
	}

	return NULL;
}
