#include"eqchecker_helper.h"
main ()
{
  unsigned long val = 1;

  if (val > (unsigned long) ~0)
    Mymyabort();
  exit (0);
}
