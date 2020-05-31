#include"eqchecker_helper.h"
int main ()
{
  long long i = 1;

  i = i * 2 + 1;
  
  if (i != 3)
    Mymyabort ();
  exit (0);
}
