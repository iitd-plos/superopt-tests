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

size_t strnlen(const char *s, size_t max)
{
	register const char *p = s;

	while (max && *p) {
		++p;
		--max;
	}

	return p - s;
}
