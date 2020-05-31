#include"eqchecker_helper.h"
void foo (int *a) {}

int main ()
{
  int a;
  if (&a == 0)
    Mymyabort ();
  else
    {
      foo (&a);
      exit (0);
    }
}
