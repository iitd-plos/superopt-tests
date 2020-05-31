#include"eqchecker_helper.h"
char *
f (char *p)
{
  short x = *p++ << 16;
  return p;
}

main ()
{
  char *p = "";
  if (f (p) != p + 1)
    Mymyabort ();
  exit (0);
}
