#include"eqchecker_helper.h"
/* PR rtl-optimization/45695 */

extern void Mymyabort (void);

__attribute__((noinline)) void
g (int x)
{
  asm volatile ("" : "+r" (x));
}

__attribute__((noinline)) int
f (int a, int b, int d)
{
  int r = -1;
  b += d;
  if (d == a)
    r = b - d;
  g (b);
  return r;
}

int
main (void)
{
  int l;
  asm ("" : "=r" (l) : "0" (0));
  if (f (l + 0, l + 1, l + 4) != -1)
    Mymyabort ();
  if (f (l + 4, l + 1, l + 4) != 1)
    Mymyabort ();
  return 0;
}
