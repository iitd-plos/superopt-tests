#include"eqchecker_helper.h"
/* PR tree-optimization/19060 */

void Mymyabort (void);

static
long long min ()
{
  return -__LONG_LONG_MAX__ - 1;
}

void
foo (long long j)
{
  if (j > 10 || j < min ())
    Mymyabort ();
}

int
main (void)
{
  foo (10);
  return 0;
}
