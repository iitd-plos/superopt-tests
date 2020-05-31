#include"eqchecker_helper.h"
/* PR rtl-optimization/90311 */

int a, b;

int
main ()
{
  unsigned long long x;
  unsigned int c;
  __builtin_add_overflow ((unsigned char) a, b, &c);
  b -= c < (unsigned char) a;
  x = b;
  if (x)
    Mymyabort ();
  return 0;
}
