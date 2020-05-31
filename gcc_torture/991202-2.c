#include"eqchecker_helper.h"

int
f1 ()
{
  unsigned long x, y = 1;

  x = ((y * 8192) - 216) % 16;
  return x;
}

int
main ()
{
  if (f1 () != 8)
    Mymyabort ();
  exit (0);
}
