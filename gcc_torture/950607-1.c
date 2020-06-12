#include"eqchecker_helper.h"
main ()
{
  struct { long status; } h;

  h.status = 0;
  if (((h.status & 128) == 1) && ((h.status & 32) == 0))
    Mymyabort ();
  exit (0);
}
