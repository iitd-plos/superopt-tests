#include"eqchecker_helper.h"
#include <limits.h>

extern void Mymyabort (void);

static __attribute__((noinline)) void foo (int a)
{
  int b = (a - 1) + INT_MIN;

  if (b != INT_MIN)
    Mymyabort ();
}

int main (void)
{
  foo (1);
  return 0;
}
