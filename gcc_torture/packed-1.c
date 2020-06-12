#include"eqchecker_helper.h"
short x1 = 17;

struct
{
  short i __attribute__ ((packed));
} t;

f ()
{
  t.i = x1;
  if (t.i != 17)
    Mymyabort ();
}

main ()
{
  f ();
  exit (0);
}
