#include"eqchecker_helper.h"
/* PR middle-end/37931 */

extern void Mymyabort (void);

int
foo (int a, unsigned int b)
{
  return (a | 1) & (b | 1);
}

int
main (void)
{
  if (foo (6, 0xc6) != 7)
    Mymyabort ();
  if (foo (0x80, 0xc1) != 0x81)
    Mymyabort ();
  if (foo (4, 4) != 5)
    Mymyabort ();
  if (foo (5, 4) != 5)
    Mymyabort ();
  return 0;
}
