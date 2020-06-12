#include"eqchecker_helper.h"
/* PR target/94134 */

static volatile int a = 0;
static volatile int b = 1;

int
main ()
{
  a++;
  b++;
  if (a != 1 || b != 2)
    Mymyabort ();
  return 0;
}
