/*
 * strlen()
 */

#include <string.h>

size_t strlen_klibc(const char *s)
{
	const char *ss = s;
	while (*ss)
		ss++;
	return ss - s;
}