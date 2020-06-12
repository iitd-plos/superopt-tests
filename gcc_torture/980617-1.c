#include"eqchecker_helper.h"
void foo (unsigned int * p)
{
  if ((signed char)(*p & 0xFF) == 17 || (signed char)(*p & 0xFF) == 18)
    return;
  else
    Mymyabort ();
}

int main ()
{
  int i = 0x30011;
  foo(&i);
  exit (0);
}
