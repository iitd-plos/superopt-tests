#include"eqchecker_helper.h"
unsigned p;

long __attribute__((noinline, noclone))
test (unsigned a)
{
  return (long)(p + a) - (long)p;
}

int
main ()
{
  p = (unsigned) -2;
  if (test (0) != 0)
    Mymyabort ();
  if (test (1) != 1)
    Mymyabort ();
  if (test (2) != -(long)(unsigned)-2)
    Mymyabort ();
  p = (unsigned) -1;
  if (test (0) != 0)
    Mymyabort ();
  if (test (1) != -(long)(unsigned)-1)
    Mymyabort ();
  if (test (2) != -(long)(unsigned)-2)
    Mymyabort ();
  return 0;
}
