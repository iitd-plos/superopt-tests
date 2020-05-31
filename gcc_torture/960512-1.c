#include"eqchecker_helper.h"
__complex__
double f ()
{
  int a[40];
  __complex__ double c;

  a[9] = 0;
  c = a[9];
  return c;
}

main ()
{
  __complex__ double c;

  if (c = f ())
    Mymyabort ();
  exit (0);
}
