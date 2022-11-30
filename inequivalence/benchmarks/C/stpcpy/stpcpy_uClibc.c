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

char *stpcpy(register char *restrict s1, const char *restrict s2)
{
	while ( (*s1++ = *s2++) != 0 );

	return s1 - 1;
}