#include"eqchecker_helper.h"
int
test (arg)
     int arg;
{
  if (arg > 0 || arg == 0)
    return 0;
  return -1;
}

main ()
{
  if (test (0) != 0)
    Mymyabort ();
  if (test (-1) != -1)
    Mymyabort ();
  exit (0);
}
