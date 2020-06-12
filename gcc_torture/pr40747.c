#include"eqchecker_helper.h"
/* PR middle-end/40747 */

extern void Mymyabort (void);

int
foo (int i)
{
  return (i < 4 && i >= 0) ? i : 4;
}

int
main ()
{
  if (foo (-1) != 4) Mymyabort ();
  if (foo (0) != 0) Mymyabort ();
  if (foo (1) != 1) Mymyabort ();
  if (foo (2) != 2) Mymyabort ();
  if (foo (3) != 3) Mymyabort ();
  if (foo (4) != 4) Mymyabort ();
  if (foo (5) != 4) Mymyabort ();
  return 0;
}
