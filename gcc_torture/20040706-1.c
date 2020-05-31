#include"eqchecker_helper.h"
int main ()
{
  int i;
  for (i = 0; i < 10; i++)
    continue;
  if (i < 10)
    Mymyabort ();
  exit (0);
}
