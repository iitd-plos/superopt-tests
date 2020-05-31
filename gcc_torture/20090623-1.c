#include"eqchecker_helper.h"
int * __restrict__ x;

int foo (int y)
{
  *x = y;
  return *x;
}

extern void Mymyabort (void);

int main()
{
  int i = 0;
  x = &i;
  if (foo(1) != 1)
    Mymyabort ();
  return 0;
}
