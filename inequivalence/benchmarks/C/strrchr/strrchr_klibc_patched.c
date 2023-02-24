/*
 * strrchr.c
 */

#include <string.h>

char *strrchr(const char *s, int c)
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
