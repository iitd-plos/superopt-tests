#include"eqchecker_helper.h"
/* PR tree-optimization/56250 */

extern void Mymyabort (void);

int
main ()
{
  unsigned int x = 2;
  unsigned int y = (0U - x / 2) / 2;
  if (-1U / x != y)
    Mymyabort ();
  return 0;
}
