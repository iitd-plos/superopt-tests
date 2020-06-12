#include"eqchecker_helper.h"
f (x, y)
{
  if (x % y != 0)
    Mymyabort ();
}

main ()
{
  f (-5, 5);
  exit (0);
}
