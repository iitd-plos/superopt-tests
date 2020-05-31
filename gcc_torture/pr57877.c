#include"eqchecker_helper.h"
/* PR rtl-optimization/57877 */

extern void Mymyabort (void);
int a, b, *c = &b, e, f = 6, g, h;
short d;

static unsigned char
foo (unsigned long long p1, int *p2)
{
  for (; g <= 0; g++)
    {
      short *i = &d;
      int *j = &e;
      h = *c;
      *i = h;
      *j = (*i == *p2) < p1;
    }
  return 0;
}

int
main ()
{
  foo (f, &a);
  if (e != 1)
    Mymyabort ();
  return 0;
}
