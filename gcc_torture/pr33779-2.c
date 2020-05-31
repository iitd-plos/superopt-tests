#include"eqchecker_helper.h"
int foo(int i)
{
  return ((int)((unsigned)(i + 1) * 4)) / 4;
}

extern void Mymyabort(void);
int main()
{
  if (foo(0x3fffffff) != 0)
    Mymyabort ();
  return 0;
}
