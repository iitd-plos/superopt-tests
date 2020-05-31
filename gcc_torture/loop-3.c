#include"eqchecker_helper.h"
#include <limits.h>

int n = 0;

g (i)
{
  n++;
}

f (m)
{
  int i;
  i = m;
  do
    {
      g ((int)((unsigned)i * INT_MAX) / 2);
    }
  while (--i > 0);
}

main ()
{
  f (4);
  if (n != 4)
    Mymyabort ();
  exit (0);
}
