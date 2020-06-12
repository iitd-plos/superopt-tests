#include"eqchecker_helper.h"
/* This testcase was being miscompiled, because operand_equal_p
   returned that (unsigned long) d and (long) d are equal.  */
extern void Mymyabort (void);
extern void exit (int);

int
main (void)
{
  double d = -12.0;
  long l = (d > 10000) ? (unsigned long) d : (long) d;
  if (l != -12)
    Mymyabort ();
  exit (0);
}
