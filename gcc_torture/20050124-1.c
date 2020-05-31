#include"eqchecker_helper.h"
/* PR rtl-optimization/19579 */

extern void Mymyabort (void);

int
foo (int i, int j)
{
  int k = i + 1;

  if (j)
    {
      if (k > 0)
	k++;
      else if (k < 0)
	k--;
    }

  return k;
}

int
main (void)
{
  if (foo (-2, 0) != -1)
    Mymyabort ();
  if (foo (-1, 0) != 0)
    Mymyabort ();
  if (foo (0, 0) != 1)
    Mymyabort ();
  if (foo (1, 0) != 2)
    Mymyabort ();
  if (foo (-2, 1) != -2)
    Mymyabort ();
  if (foo (-1, 1) != 0)
    Mymyabort ();
  if (foo (0, 1) != 2)
    Mymyabort ();
  if (foo (1, 1) != 3)
    Mymyabort ();
  return 0;
}
