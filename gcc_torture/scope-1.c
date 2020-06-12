#include"eqchecker_helper.h"
int v = 3;

f ()
{
  int v = 4;
  {
    extern int v;
    if (v != 3)
      Mymyabort ();
  }
}

main ()
{
  f ();
  exit (0);
}
