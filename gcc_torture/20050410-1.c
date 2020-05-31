#include"eqchecker_helper.h"
int s = 200;
int __attribute__((noinline))
foo (void)
{
  return (signed char) (s - 100) - 5;
}
int
main (void)
{
  if (foo () != 95)
    Mymyabort ();
  exit (0);
}
