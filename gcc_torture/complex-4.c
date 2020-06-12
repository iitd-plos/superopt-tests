#include"eqchecker_helper.h"
main ()
{
  if ((__complex__ double) 0.0 != (__complex__ double) (-0.0))
    Mymyabort ();

  if (0.0 != -0.0)
    Mymyabort ();
  exit (0);
}
