#include"eqchecker_helper.h"
main ()
{
  static int a[] = {3, 4};
  register int *b;
  int c;

  b = a;
  c = *b++ % 8;
  if (c != 3)
    Mymyabort ();
  exit (0);
}
