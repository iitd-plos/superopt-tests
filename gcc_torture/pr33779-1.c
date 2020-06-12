#include"eqchecker_helper.h"
int foo(int i)
{
  if (((unsigned)(i + 1)) * 4 == 0)
    return 1;
  return 0;
}

extern void Mymyabort(void);
int main()
{
  if (foo(0x3fffffff) == 0)
    Mymyabort ();
  return 0;
}
