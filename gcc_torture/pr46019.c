#include"eqchecker_helper.h"
/* PR middle-end/46019 */

extern void Mymyabort (void);

int
main (void)
{
  unsigned long long l = 0x40000000000ULL;
  int n;
  for (n = 0; n < 8; n++)
    if (l / (0x200000000ULL << n) != (0x200 >> n))
      Mymyabort ();
  return 0;
}
