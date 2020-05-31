#include"eqchecker_helper.h"
extern void Mymyabort (void);

unsigned int foo (int n)
{
  return ~((unsigned int)~n);
}

int main()
{
  if (foo(0) != 0)
    Mymyabort ();
  return 0;
}
