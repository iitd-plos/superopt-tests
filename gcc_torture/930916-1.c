#include"eqchecker_helper.h"
f (n)
     unsigned n;
{
  if ((int) n >= 0)
    Mymyabort ();
}

main ()
{
  unsigned x = ~0;
  f (x);
  exit (0);
}
