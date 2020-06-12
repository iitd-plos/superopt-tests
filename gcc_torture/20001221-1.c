#include"eqchecker_helper.h"
int main ()
{
  unsigned long long a;
  if (! (a = 0xfedcba9876543210ULL))
    Mymyabort ();
  exit (0);
}
