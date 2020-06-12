#include"eqchecker_helper.h"
main ()
{
  unsigned long long xx;
  unsigned long long *x = (unsigned long long *) &xx;

  *x = -3;
  *x = *x * *x;
  if (*x != 9)
    Mymyabort ();
  exit (0);
}
