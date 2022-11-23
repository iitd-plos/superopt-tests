/*
 * memmove.c
 */

#include <string.h>

void *memmove(void *dst, const void *src, size_t n)
{
	const char *p = src;
	char *q = dst;
	/* __x86_64__ */
	if (q < p) {
		asm volatile("cld; rep; movsb"
			     : "+c" (n), "+S"(p), "+D"(q));
	} else {
		p += (n - 1);
		q += (n - 1);
		asm volatile("std; rep; movsb; cld"
			     : "+c" (n), "+S"(p), "+D"(q));
	}

	return dst;
}
