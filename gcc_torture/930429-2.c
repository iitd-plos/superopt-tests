#include"eqchecker_helper.h"
int
f (b)
{
  return (b >> 1) > 0;
}

main ()
{
  if (!f (9))
    Mymyabort ();
  if (f (-9))
    Mymyabort ();
  exit (0);
}
