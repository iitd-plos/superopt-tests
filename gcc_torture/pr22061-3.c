#include"eqchecker_helper.h"
void
bar (int N)
{
  int foo (char a[2][++N]) { N += 4; return sizeof (a[0]); }
  if (foo (0) != 2)
    Mymyabort ();
  if (foo (0) != 7)
    Mymyabort ();
  if (N != 11)
    Mymyabort ();
}

int
main()
{
  bar (1);
  exit (0);
}
