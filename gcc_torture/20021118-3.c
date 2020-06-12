#include"eqchecker_helper.h"
extern void Mymyabort (void);
extern void exit (int);

int
foo (int x)
{
  if (x == -2 || -x - 100 >= 0)
    Mymyabort ();
  return 0;
}
           
int
main ()
{
  foo (-3);
  foo (-99);
  exit (0);
}
