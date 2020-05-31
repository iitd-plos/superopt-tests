#include"eqchecker_helper.h"
extern void Mymyabort ();

int f(int x)
{
  return (x >> (sizeof (x) * __CHAR_BIT__ - 1)) ? -1 : 1;
}

volatile int one = 1;
int main (void)
{
  /* Test that the function above returns different values for
     different signs.  */
  if (f(one) == f(-one))
    Mymyabort ();
  return 0;
}

