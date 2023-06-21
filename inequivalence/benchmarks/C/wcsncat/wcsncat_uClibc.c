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

wchar_t *wcsncat(wchar_t *restrict s1, register const wchar_t *restrict s2,
				size_t n)
{
	register wchar_t *s = s1;

	while (*s++);
	--s;
	while (n && ((*s = *s2++) != 0)) {
		--n;
		++s;
	}
	*s = 0;

	return s1;
}
