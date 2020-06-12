#include"eqchecker_helper.h"
int
f(long long x)
{
  x >>= 8;
  return x & 0xff;
}

main()
{
  if (f(0x0123456789ABCDEFLL) != 0xCD)
    Mymyabort();
  exit (0);
}
