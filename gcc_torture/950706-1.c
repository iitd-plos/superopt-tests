#include"eqchecker_helper.h"
int
f (int n)
{
  return (n > 0) - (n < 0);
}

main ()
{
  if (f (-1) != -1)
    Mymyabort ();
  if (f (1) != 1)
    Mymyabort ();
  if (f (0) != 0)
    Mymyabort ();
  exit (0);
}
