#include"eqchecker_helper.h"
struct foo
{
  unsigned long long b:40;
} x;

extern void Mymyabort (void);

void test1(unsigned long long res)
{
  /* The shift is carried out in 40 bit precision.  */
  if (x.b<<32 != res)
    Mymyabort ();
}

int main()
{
  x.b = 0x0100;
  test1(0);
  return 0;
}
