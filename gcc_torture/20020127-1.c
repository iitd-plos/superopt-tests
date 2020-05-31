#include"eqchecker_helper.h"
/* This used to fail on h8300.  */

extern void Mymyabort (void);
extern void exit (int);

unsigned long
foo (unsigned long n)
{
  return (~n >> 3) & 1;
}

int
main ()
{
  if (foo (1 << 3) != 0)
    Mymyabort ();

  if (foo (0) != 1)
    Mymyabort ();

  exit (0);
}
