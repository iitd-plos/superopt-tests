#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned int bits;
#define	NBITS	(8 * sizeof(bits))

void *MYmymalloc(size_t size);
void *MYmymemset(void *s, int c, size_t n);
int MYmyprintf(const char *format, ...);
int MYmyatoi(const char *nptr);

unsigned int
nsieve(unsigned int m)
{
	unsigned int count, i, j;
	bits * a;
  a = MYmymalloc((m / NBITS) * sizeof(bits));
	MYmymemset(a, (1 << 8) - 1, (m / NBITS) * sizeof(bits));
	count = 0;
	for (i = 2; i < m; ++i)
		if (a[i / NBITS] & (1 << i % NBITS)) {
			for (j = i + i; j < m; j += i)
				a[j / NBITS] &= ~(1 << j % NBITS);
			++count;
		}
	return (count);
}

void
test(unsigned int n)
{
	unsigned int count, m;

	m = (1 << n) * 10000;
	count = nsieve(m);
	MYmyprintf("Primes up to %8u %8u\n", m, count);
}

int
main(int ac, char **av)
{
	unsigned int n;

	n = ac < 2 ? 9 : MYmyatoi(av[1]);
	test(n);
	if (n >= 1)
		test(n - 1);
	if (n >= 2)
		test(n - 2);
	//exit(0);
        return 0;
}
