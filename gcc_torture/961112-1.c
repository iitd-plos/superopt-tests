#include"eqchecker_helper.h"
f (x)
{
  if (x != 0 || x == 0)
    return 0;
  return 1;
}

main ()
{
  if (f (3))
    Mymyabort ();
  exit (0);
}
