#include"eqchecker_helper.h"
/* PR middle-end/37103 */

extern void Mymyabort (void);

void
foo (unsigned short x)
{
  signed char y = -1;
  if (x == y)
    Mymyabort ();
}

void
bar (unsigned short x)
{
  unsigned char y = -1;
  if (x == y)
    Mymyabort ();
}

int
main (void)
{
  if (sizeof (int) == sizeof (short))
    return 0;
  foo (-1);
  if (sizeof (short) > 1)
    bar (-1);
  return 0;
}
