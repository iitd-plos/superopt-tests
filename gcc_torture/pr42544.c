#include"eqchecker_helper.h"
/* PR c/42544 */

extern void Mymyabort (void);

int
main ()
{
  signed short s = -1;
  if (sizeof (long long) == sizeof (unsigned int))
    return 0;
  if ((unsigned int) s >= 0x100000000ULL)
    Mymyabort ();
  return 0;
}
