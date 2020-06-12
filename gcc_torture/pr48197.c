#include"eqchecker_helper.h"
/* PR c/48197 */

extern void Mymyabort (void);
static int y = 0x8000;

int
main ()
{
  unsigned int x = (short)y;
  if (sizeof (0LL) == sizeof (0U))
    return 0;
  if (0LL > (0U ^ (short)-0x8000))
    Mymyabort ();
  if (0LL > (0U ^ x))
    Mymyabort ();
  if (0LL > (0U ^ (short)y))
    Mymyabort ();
  if ((0U ^ (short)-0x8000) < 0LL)
    Mymyabort ();
  if ((0U ^ x) < 0LL)
    Mymyabort ();
  if ((0U ^ (short)y) < 0LL)
    Mymyabort ();
  return 0;
}
