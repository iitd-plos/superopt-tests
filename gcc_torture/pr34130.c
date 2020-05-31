#include"eqchecker_helper.h"
extern void Mymyabort (void);
int foo (int i)
{
  return -2 * __builtin_abs(i - 2);
}
int main()
{
  if (foo(1) != -2
      || foo(3) != -2)
    Mymyabort ();
  return 0;
}
