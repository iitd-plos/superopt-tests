#include"eqchecker_helper.h"
extern void Mymyabort ();

int foo(unsigned short x)
{
  unsigned short y;
  y = x > 32767 ? x - 32768 : 0;
  return y;
}

int main()
{
  if (foo (0) != 0)
    Mymyabort ();
  if (foo (32767) != 0)
    Mymyabort ();
  if (foo (32768) != 0)
    Mymyabort ();
  if (foo (32769) != 1)
    Mymyabort ();
  if (foo (65535) != 32767)
    Mymyabort ();
  return 0;
}

