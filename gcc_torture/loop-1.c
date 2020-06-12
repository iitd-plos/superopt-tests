#include"eqchecker_helper.h"
main ()
{
  int i, j, k[3];

  j = 0;
  for (i=0; i < 3; i++)
    {
      k[i] = j++;
    }

  for (i=2; i >= 0; i--)
    {
      if (k[i] != i)
	Mymyabort ();
    }

  exit (0);
}
