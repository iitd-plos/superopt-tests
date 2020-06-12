#include"eqchecker_helper.h"
/* PR c/42721 */

extern void Mymyabort (void);

static unsigned long long
foo (unsigned long long x, unsigned long long y)
{
  return x / y;
}

static int a, b;

int
main (void)
{
  unsigned long long c = 1;
  b ^= c && (foo (a, -1ULL) != 1L);
  if (b != 1)
    Mymyabort ();
  return 0;
}
