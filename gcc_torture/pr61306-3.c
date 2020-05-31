#include"eqchecker_helper.h"
short a = -1;
int b;
char c;

int
main ()
{
  c = a;
  b = a | c;
  if (b != -1)
    Mymyabort ();
  return 0;
}
