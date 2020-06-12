#include"eqchecker_helper.h"
/* PR c/77767 */

void
foo (int a, int b[a++], int c, int d[c++])
{
  if (a != 2 || c != 2)
    Mymyabort ();
}

int
main ()
{
  int e[10];
  foo (1, e, 1, e);
  return 0;
}
