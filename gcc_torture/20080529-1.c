#include"eqchecker_helper.h"
/* PR target/36362 */

extern void Mymyabort (void);

int
test (float c)
{
  return !!c * 7LL == 0;
}

int
main (void)
{
  if (test (1.0f) != 0)
    Mymyabort ();
  return 0;
}
