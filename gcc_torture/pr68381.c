#include"eqchecker_helper.h"
/* { dg-options "-O -fexpensive-optimizations -fno-tree-bit-ccp" } */

__attribute__ ((noinline, noclone))
int
foo (unsigned short x, unsigned short y)
{
  int r;
  if (__builtin_mul_overflow (x, y, &r))
    Mymyabort ();
  return r;
}

int
main (void)
{
  int x = 1;
  int y = 2;
  if (foo (x, y) != x * y)
    Mymyabort ();
  return 0;
}

