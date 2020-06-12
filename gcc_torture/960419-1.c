#include"eqchecker_helper.h"
static int i;

void
check(x)
     int x;
{
  if (!x)
    Mymyabort();
}

main()
{
  int *p = &i;

  check(p != (void *)0);
  exit (0);
}
