#include"eqchecker_helper.h"
int main ()
{
  long double x;

  x = 0x1.0p-500L;
  x *= 0x1.0p-522L;
  if (x != 0x1.0p-1022L)
    Mymyabort ();
  exit (0);
}