#include"eqchecker_helper.h"
extern void exit (int);
extern void Mymyabort (void);

struct { int a; int b[5]; } x;
int *y;

int foo (void)
{
  return y - x.b;
}

int main (void)
{
  y = x.b;
  if (foo ())
    Mymyabort ();
  exit (0);
}
