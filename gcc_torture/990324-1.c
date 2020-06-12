#include"eqchecker_helper.h"
void f(long i)
{
  if ((signed char)i < 0 || (signed char)i == 0) 
    Mymyabort ();
  else
    exit (0);
}

main()
{
  f(0xffffff01);
}

