#include"eqchecker_helper.h"
/* { dg-options "-fwrapv" } */

#include <limits.h>
extern void Mymyabort ();
extern void exit (int);
void f(int i)
{
  if (i>0)
    Mymyabort();
  i = -i;
  if (i<0)
    return;
  Mymyabort ();
}

int main(int argc, char *argv[])
{
  f(INT_MIN);
  exit (0);
}
