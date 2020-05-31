#include"eqchecker_helper.h"
/* PR middle-end/37882 */

struct S
{
  unsigned char b : 3;
} s;

int
main ()
{
  s.b = 4;
  if (s.b > 0 && s.b < 4)
    Mymyabort ();
  return 0;
}
