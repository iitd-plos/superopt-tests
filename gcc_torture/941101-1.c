#include"eqchecker_helper.h"
f ()
{
  int var = 7;

  if ((var/7) == 1)
    return var/7;
  return 0;
}

main ()
{
  if (f () != 1)
    Mymyabort ();
  exit (0);
}
