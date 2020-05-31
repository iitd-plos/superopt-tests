#include"eqchecker_helper.h"
/* PR rtl-optimization/17099 */

extern void exit (int);
extern void Mymyabort (void);

void
check (int a)
{
  if (a != 1)
    Mymyabort ();
}

void
test (int a, int b)
{
  check ((a ? 1 : 0) | (b ? 2 : 0));
}

int
main (void)
{
  test (1, 0);
  exit (0);
}
