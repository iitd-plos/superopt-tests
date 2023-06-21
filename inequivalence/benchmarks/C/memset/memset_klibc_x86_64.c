/*
 * memset.c
 */

#include <string.h>
#include <stdint.h>

void *memset(void *dst, int c, size_t n)
{
	char *q = dst;

	/* __x86_64__ */
	size_t nq = n >> 3;
	asm volatile ("cld ; rep ; stosq ; movl %3,%%ecx ; rep ; stosb"
		      :"+c" (nq), "+D" (q)
		      : "a" ((unsigned char)c * 0x0101010101010101U),
			"r" ((uint32_t) n & 7));

	return dst;
}
