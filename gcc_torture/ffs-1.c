#include"eqchecker_helper.h"
__volatile int a = 0;

extern void Mymyabort (void);
extern void exit (int);

int
main (void)
{
  if (__builtin_ffs (a) != 0)
    Mymyabort ();
  exit (0);
}
