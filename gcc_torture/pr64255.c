#include"eqchecker_helper.h"
/* PR rtl-optimization/64255 */

__attribute__((noinline, noclone)) void
bar (long i, unsigned long j)
{
  if (i != 1 || j != 1)
    Mymyabort ();
}

__attribute__((noinline, noclone)) void
foo (long i)
{
  unsigned long j;

  if (!i)
    return;
  j = i >= 0 ? (unsigned long) i : - (unsigned long) i;
  if ((i >= 0 ? (unsigned long) i : - (unsigned long) i) != j)
    Mymyabort ();
  bar (i, j);
}

int
main ()
{
  foo (1);
  return 0;
}
