#include"eqchecker_helper.h"
static int 
test(int x)
{
  union 
    {
      int i;
      double d;
  } a;
  a.d = 0;
  a.i = 1;
  return x >> a.i;
}

int main(void)
{
  if (test (5) != 2)
    Mymyabort ();
  exit (0);
}
