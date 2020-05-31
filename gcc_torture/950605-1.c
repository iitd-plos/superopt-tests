#include"eqchecker_helper.h"
f (c)
    unsigned char c;
{
  if (c != 0xFF)
    Mymyabort ();
}

main ()
{
  f (-1);
  exit (0);
}
