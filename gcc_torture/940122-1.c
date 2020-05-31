#include"eqchecker_helper.h"
char *a = 0;
char *b = 0;

g (x)
     int x;
{
  if ((!!a) != (!!b))
    Mymyabort ();
}

f (x)
     int x;
{
  g (x * x);
}

main ()
{
  f (100);
  exit (0);
}
