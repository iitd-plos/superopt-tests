#include"eqchecker_helper.h"
unsigned
f1 (x)
{
  return ((unsigned) (x != 0) - 3) / 2;
}

unsigned long long
f2 (x)
{
  return ((unsigned long long) (x != 0) - 3) / 2;
}

main ()
{
  if (f1 (1) != (~(unsigned) 0) >> 1)
    Mymyabort ();
  if (f1 (0) != ((~(unsigned) 0) >> 1) - 1)
    Mymyabort ();
  if (f2 (1) != (~(unsigned long long) 0) >> 1)
    Mymyabort ();
  if (f2 (0) != ((~(unsigned long long) 0) >> 1) - 1)
    Mymyabort ();
  exit (0);
}
