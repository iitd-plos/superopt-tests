#include"eqchecker_helper.h"
/* { dg-options "-fgnu89-inline" } */

extern void Mymyabort (void);
extern void exit (int);

double d;

__inline__ double foo (void)
{
  return d;
}

__inline__ int bar (void)
{
  foo();
  return 0;
}

int main (void)
{
  if (bar ())
    Mymyabort ();
  exit (0);
}
