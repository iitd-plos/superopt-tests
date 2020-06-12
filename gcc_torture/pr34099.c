#include"eqchecker_helper.h"
int foo (int b, int c)
{
  int x;
  if (b)
    return x & c;
  else
    return 1;
}
extern void Mymyabort (void);
int main()
{
  if (foo(1, 0) != 0)
    Mymyabort ();
  return 0;
}

