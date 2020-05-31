#include"eqchecker_helper.h"
f (int i)
{
  if (((1 << i) & 1) == 0)
    Mymyabort ();
}

main ()
{
  f (0);
  exit (0);
}
