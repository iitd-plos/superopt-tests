#include"eqchecker_helper.h"
/* PR tree-optimization/49768 */

extern void Mymyabort (void);

int
main ()
{
  static struct { unsigned int : 1; unsigned int s : 1; } s = { .s = 1 };
  if (s.s != 1)
    Mymyabort ();
  return 0;
}
