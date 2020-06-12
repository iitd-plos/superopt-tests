#include"eqchecker_helper.h"
/* PR 8848 */

extern void Mymyabort ();

int foo(int status)
{
  int s = 0;
  if (status == 1) s=1;
  if (status == 3) s=3;
  if (status == 4) s=4;
  return s;
}

int main()
{
  if (foo (3) != 3)
    Mymyabort ();
  return 0;
}
