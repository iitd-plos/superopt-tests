#include"eqchecker_helper.h"
/* Distilled from try_pre_increment in flow.c.  If-conversion inserted
   new instructions at the wrong place on ppc.  */

int foo(int a)
{
  int x;
  x = 0;
  if (a > 0) x = 1;
  if (a < 0) x = 1;
  return x;
}

int main()
{
  if (foo(1) != 1)
    Mymyabort();
  return 0;
}
