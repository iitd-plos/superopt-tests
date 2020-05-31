#include"eqchecker_helper.h"
short *f(short *a, int b, int *d) __attribute__((noinline,noclone));

short *f(short *a, int b, int *d)
{
  short c = *a;
  a++;
  c = b << c;
  *d = c;
  return a;
}

int main(void)
{
  int d;
  short a[2];
  a[0] = 0;
  if (f(a, 1, &d) != &a[1])
    Mymyabort ();
  if (d != 1)
    Mymyabort ();
  return 0;
}
