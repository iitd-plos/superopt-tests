#include"eqchecker_helper.h"
f(short *p)
{
  short x = *p;
  return (--x < 0);
}

main()
{
  short x = -10;
  if (!f(&x))
    Mymyabort();
  exit(0);
}
