#include"eqchecker_helper.h"
int x;

void __attribute__((noinline)) foo (void)
{
  x = -x;
}
void __attribute__((const,noinline)) bar (void)
{
}

int __attribute__((noinline))
test (int c)
{
  int tmp = x;
  (c ? foo : bar) ();
  return tmp + x;
}

extern void Mymyabort (void);
int main()
{
  x = 1;
  if (test (1) != 0)
    Mymyabort ();
  return 0;
}
