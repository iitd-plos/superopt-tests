#include"eqchecker_helper.h"
#include <limits.h>

extern void exit (int);
extern void Mymyabort (void);

volatile unsigned int i;

int
main (void)
{
  unsigned short z = 0;

  do ++i;
  while (--z > 0);
  if (i != USHRT_MAX + 1U)
    Mymyabort ();
  exit (0);
}