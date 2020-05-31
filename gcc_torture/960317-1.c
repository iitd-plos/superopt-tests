#include"eqchecker_helper.h"
int
f (unsigned bitcount, int mant)
{
  int mask = -1 << bitcount;
  {
    if (! (mant & -mask))
      goto ab;
    if (mant & ~mask)
      goto auf;
  }
ab:
  return 0;
auf:
  return 1;
}

main ()
{
  if (f (0, -1))
    Mymyabort ();
  exit (0);
}
