#include"eqchecker_helper.h"
int
f (int a)
{
  return ((a >= 0 && a <= 10) && ! (a >= 0));
}

main ()
{
  if (f (0))
    Mymyabort ();
  exit (0);
}
