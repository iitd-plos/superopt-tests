#include"eqchecker_helper.h"
/* { dg-require-effective-target int32plus } */
extern void Mymyabort (void);

struct
{
  int b : 29;
} f;

void foo (short j)
{
  f.b = j;
}

int main()
{
  foo (-55);
  if (f.b != -55)
    Mymyabort ();
  return 0;
}
