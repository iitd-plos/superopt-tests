// openbsd
#include <stddef.h>
#include "eqchecker_helper.h"

void *
memmem(const void *haystack, size_t hl, const void *needle, size_t nl)
{
	const char *cur, *last;
	const char *cl = haystack;
	const char *cs = needle;

	/* a zero length needle should just return the haystack */
	/* if (nl == 0) */
	/* 	return (void *)cl; */

	/* "s" must be smaller or equal to "l" */
	if (hl < nl)
		return NULL;

	/* special case where nl == 1 */
	/* if (nl == 1) */
	/* 	return memchr(l, *cs, hl); */

	/* the last position where its possible to find "s" in "l" */
	last = cl + hl - nl;

	for (cur = cl; cur <= last; cur++)
		if (/*cur[0] == cs[0] && */memcmp(cur, cs, nl) == 0)
			return (void *)cur;

	return NULL;
}

int main(int argc, char* argv[])
{
  return 0;
}
