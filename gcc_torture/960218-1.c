#include"eqchecker_helper.h"
int gl;

g (x)
{
  gl = x;
  return 0;
}

f (x)
{
  int a = ~x;
  while (a)
    a = g (a);
}

main ()
{
  f (3);
  if (gl != -4)
    Mymyabort ();
  exit (0);
}
