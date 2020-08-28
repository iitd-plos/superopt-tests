#include"eqchecker_helper.h"
/* PR tree-optimization/53465 */

extern void Mymyabort ();

static const int a[] = { 1, 2 };

void
foo (const int *x, int y)
{
  int i;
  int b = 0;
  int c;
  for (i = 0; i < y; i++)
    {
      int d = x[i];
      if (d == 0)
	break;
      if (b && d <= c)
	Mymyabort ();
      c = d;
      b = 1;
    }
}

int
main ()
{
  foo (a, 2);
  return 0;
}