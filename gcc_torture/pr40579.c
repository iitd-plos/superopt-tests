#include"eqchecker_helper.h"
extern void Mymyabort (void);
static char * __attribute__((noinline))
itos(int num)
{
  return (char *)0;
}
static void __attribute__((noinline))
foo(int i, const char *x)
{
  if (i >= 4)
    Mymyabort ();
}
int main()
{
  int x = -__INT_MAX__ + 3;
  int i;

  for (i = 0; i < 4; ++i)
    {
      char *p;
      --x;
      p = itos(x);
      foo(i, p);
    }

  return 0;
}

