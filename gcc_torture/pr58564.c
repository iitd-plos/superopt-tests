#include"eqchecker_helper.h"
/* PR middle-end/58564 */

extern void Mymyabort (void);
int a, b;
short *c, **d = &c;

int
main ()
{
  b = (0, 0 > ((&c == d) & (1 && (a ^ 1)))) | 0U;
  if (b != 0)
    Mymyabort ();
  return 0;
}
