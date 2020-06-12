#include"eqchecker_helper.h"
int
main()
{
  double x = 1.0;
  double y = 2.0;

  if ((y > x--) != 1)
    Mymyabort ();
  exit (0);
}


