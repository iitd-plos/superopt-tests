#include"eqchecker_helper.h"
/* PR rtl-optimization/51023 */

extern void Mymyabort (void);

short int
foo (long int x)
{
  return x;
}

int
main ()
{
  long int a = 0x4272AL;
  if (foo (a) == a)
    Mymyabort ();
  return 0;
}
