#include"eqchecker_helper.h"
int __attribute__ ((noinline, noclone))
foo (float a)
{
  return a * 4.9f;
}


int
main (void)
{
  if (foo (10.0f) != 49)
    Mymyabort ();

  return 0;
}
