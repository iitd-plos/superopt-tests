#include"eqchecker_helper.h"
f()
{
  unsigned b = 0;

  if (b > ~0U)
    b = ~0U;

  return b;
}
main()
{
  if (f()!=0)
    Mymyabort();
  exit (0);
}
