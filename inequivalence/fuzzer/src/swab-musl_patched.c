#include <unistd.h>

void swab_musl_patched(const void *restrict _src, void *restrict _dest, ssize_t n)
{
	const char *src = _src;
	char *dest = _dest;
	for (; n>1; n-=2) {
        const char s0 = src[0], s1 = src[1];
		dest[0] = s1;
		dest[1] = s0;
		dest += 2;
		src += 2;
	}
}