/*
 * strrchr.c
 */

#include <string.h>

char *strrchr_klibc_patched(const char *s, int c)
{
	const char *found = NULL;

	for (;;) {
		if (*s == (char)c)
			found = s;
		if (!*s)
			break;
		s++;
	}

	return (char *)found;
}