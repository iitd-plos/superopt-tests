#include"eqchecker_helper.h"
extern void Mymyabort (void);
extern void exit (int);

void __attribute__ ((noinline))
foo(int a)
{
  int z = a > 0 ? a : -a;
  long long x = z;
  if (x > 0x100000000LL)
    Mymyabort ();
  else
    exit (0);
}

int
main()
{
  foo (1);
}
