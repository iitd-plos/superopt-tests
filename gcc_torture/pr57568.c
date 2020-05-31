#include"eqchecker_helper.h"
/* PR target/57568 */

extern void Mymyabort (void);
int a[6][9] = { }, b = 1, *c = &a[3][5];

int
main ()
{
  if (b && (*c = *c + *c))
    Mymyabort ();
  return 0;
}
