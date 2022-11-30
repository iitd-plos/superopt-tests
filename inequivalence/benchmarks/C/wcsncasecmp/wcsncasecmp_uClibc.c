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

#include <ctype.h>


#define TOLOWER(C) towlower((C))

int wcsncasecmp(register const wchar_t *s1, register const wchar_t *s2, size_t n)
{
	while (n && ((*s1 == *s2) || (TOLOWER(*s1) == TOLOWER(*s2)))) {
		if (!*s1++) {
			return 0;
		}
		++s2;
		--n;
	}

	return (n == 0)
		? 0
		: ((((unsigned int)TOLOWER(*s1)) < ((unsigned int)TOLOWER(*s2))) ? -1 : 1);
	/* TODO -- should wide cmp funcs do wchar or Wuchar compares? */
}

