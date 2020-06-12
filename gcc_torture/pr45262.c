#include"eqchecker_helper.h"
/* PR middle-end/45262 */

/* { dg-require-effective-target int32plus } */

extern void Mymyabort (void);

int
foo (unsigned int x)
{
  return ((int) x < 0) || ((int) (-x) < 0);
}

int
bar (unsigned int x)
{
  return x >> 31 || (-x) >> 31;
}

int
main (void)
{
  if (foo (1) != 1)
    Mymyabort ();
  if (foo (0) != 0)
    Mymyabort ();
  if (foo (-1) != 1)
    Mymyabort ();
  if (bar (1) != 1)
    Mymyabort ();
  if (bar (0) != 0)
    Mymyabort ();
  if (bar (-1) != 1)
    Mymyabort ();
  return 0;
}
