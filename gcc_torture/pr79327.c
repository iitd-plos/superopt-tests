#include"eqchecker_helper.h"
/* PR tree-optimization/79327 */
/* { dg-require-effective-target c99_runtime } */

volatile int a;

int
main (void)
{
  int i;
  char buf[64];
  if (__builtin_sprintf (buf, "%#hho", a) != 1)
    Mymyabort ();
  if (__builtin_sprintf (buf, "%#hhx", a) != 1)
    Mymyabort ();
  a = 1;
  if (__builtin_sprintf (buf, "%#hho", a) != 2)
    Mymyabort ();
  if (__builtin_sprintf (buf, "%#hhx", a) != 3)
    Mymyabort ();
  a = 127;
  if (__builtin_sprintf (buf, "%#hho", a) != 4)
    Mymyabort ();
  if (__builtin_sprintf (buf, "%#hhx", a) != 4)
    Mymyabort ();
  return 0;
}
