#include"eqchecker_helper.h"
/* Used to be miscompiled at -O0 due to incorrect choice of sign extension
   vs. zero extension.  __attribute__ ((noinline)) added to try to make it
   fail at higher optimization levels too.  */

//extern void Mymyabort (void);

long long __attribute__ ((noinline))
mydiv (long long val)
{
  return val / 32768;
}

int main (void)
{
  long long d1 = -990000000;
  long long d2 = mydiv(d1);
  if (d2 != -30212)
    Mymyabort ();
  return 0;
}

