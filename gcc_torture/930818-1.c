#include"eqchecker_helper.h"
static double one = 1.0;

f()
{
  int colinear;
  colinear = (one == 0.0);
  if (colinear)
    Mymyabort ();
  return colinear;
}
main()
{
  if (f()) Mymyabort();
  exit (0);
}
