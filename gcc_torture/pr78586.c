#include"eqchecker_helper.h"
/* PR tree-optimization/78586 */

void
foo (unsigned long x)
{
  char a[30];
  unsigned long b = __builtin_sprintf (a, "%lu", x);
  if (b != 4)
    Mymyabort ();
}

int
main ()
{
  foo (1000);
  return 0;
}
