#include"eqchecker_helper.h"
/* PR rtl-optimization/34490 */

extern void Mymyabort (void);

static int x;

int
__attribute__((noinline))
bar (void)
{
  return x;
}

int
foo (void)
{
  long int b = bar ();
  if ((unsigned long) b < -4095L)
    return b;
  if (-b != 38)
    b = -2;
  return b + 1;
}

int
main (void)
{
  x = 26;
  if (foo () != 26)
    Mymyabort ();
  x = -39;
  if (foo () != -1)
    Mymyabort ();
  x = -38;
  if (foo () != -37)
    Mymyabort ();
  return 0;
}
