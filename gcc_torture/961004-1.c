#include"eqchecker_helper.h"
int k = 0;

main()
{
  int i;
  int j;

  for (i = 0; i < 2; i++)
    {
      if (k)
	{
	  if (j != 2)
	    Mymyabort ();
	}
      else
	{
	  j = 2;
	  k++;
	}
    }
  exit (0);
}
