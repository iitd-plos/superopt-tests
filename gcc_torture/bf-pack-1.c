#include"eqchecker_helper.h"
struct foo
{
  unsigned half:16;
  unsigned long whole:32 __attribute__ ((packed));
};

f (struct foo *q)
{
  if (q->half != 0x1234)
    Mymyabort ();
  if (q->whole != 0x56789abcL)
    Mymyabort ();
}

main ()
{
  struct foo bar;

  bar.half = 0x1234;
  bar.whole = 0x56789abcL;
  f (&bar);
  exit (0);
}
