#include"eqchecker_helper.h"
/* PR tree-optimization/58364 */

int a = 1, b, c;

int
foo (int x)
{
  return x < 0 ? 1 : x;
}

int
main ()
{
  if (foo (a > c == (b = 0)))
    Mymyabort ();
  return 0;
}
