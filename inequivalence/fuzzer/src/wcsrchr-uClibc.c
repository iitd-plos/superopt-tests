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

wchar_t *wcsrchr_uClibc(register const  wchar_t *s, wchar_t c)
{
	register const wchar_t *p;

	p = NULL;
	do {
		if (*s == (wchar_t) c) {
			p = s;
		}
	} while (*s++);

	return (wchar_t *) p;			/* silence the warning */
}
