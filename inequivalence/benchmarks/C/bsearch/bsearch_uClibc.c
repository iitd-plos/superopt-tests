/* Copyright (C) 2004-2006 Manuel Novoa III <mjn3@uclibc.org>
 *
 * Licensed under the LGPL v2.1, see the file COPYING.LIB in this tarball.
 */

#define L_bsearch

/*  Copyright (C) 2002     Manuel Novoa III
 *  From my (incomplete) stdlib library for linux and (soon) elks.
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Library General Public
 *  License as published by the Free Software Foundation; either
 *  version 2 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Library General Public License for more details.
 *
 *  You should have received a copy of the GNU Library General Public
 *  License along with this library; if not, see
 *  <http://www.gnu.org/licenses/>.
 */

/*  ATTENTION!   ATTENTION!   ATTENTION!   ATTENTION!   ATTENTION!
 *
 *  This code is currently under development.  Also, I plan to port
 *  it to elks which is a 16-bit environment with a fairly limited
 *  compiler.  Therefore, please refrain from modifying this code
 *  and, instead, pass any bug-fixes, etc. to me.  Thanks.  Manuel
 *
 *  ATTENTION!   ATTENTION!   ATTENTION!   ATTENTION!   ATTENTION! */

/* Oct 29, 2002
 * Fix a couple of 'restrict' bugs in mbstowcs and wcstombs.
 *
 * Nov 21, 2002
 * Add wscto{inttype} functions.
 */

#include <limits.h>
#include <stdint.h>
#include <stdint.h>
#include <inttypes.h>
#include <ctype.h>
#include <errno.h>
#include <assert.h>
#include <unistd.h>

#include <stdlib.h>
#include <locale.h>

#ifdef L_bsearch

void *bsearch(const void *key, const void *base, size_t /* nmemb */ high,
			  size_t size, int (*compar)(const void *, const void *))
{
	register char *p;
	size_t low;
	size_t mid;
	int r;

	if (size > 0) {				/* TODO: change this to an assert?? */
		low = 0;
		while (low < high) {
			mid = low + ((high - low) >> 1); /* Avoid possible overflow here. */
			p = ((char *)base) + mid * size; /* Could overflow here... */
			r = (*compar)(key, p); /* but that's an application problem! */
			if (r > 0) {
				low = mid + 1;
			} else if (r < 0) {
				high = mid;
			} else {
				return p;
			}
		}
	}
	return NULL;
}

#endif
