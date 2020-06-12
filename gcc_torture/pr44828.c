#include"eqchecker_helper.h"
extern void Mymyabort (void);

static signed char
foo (signed char si1, signed char si2)
{
  return si1 * si2;
}

int a = 0x105F61CA;

int
main (void)
{
  int b = 0x0332F5C8;
  if (foo (b, a) > 0)
    Mymyabort ();
  return 0;
}

