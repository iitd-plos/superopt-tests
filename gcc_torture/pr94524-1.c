#include"eqchecker_helper.h"
/* PR tree-optimization/94524 */

typedef signed char __attribute__ ((__vector_size__ (16))) V;

static __attribute__ ((__noinline__, __noclone__)) V
foo (V c)
{
  c %= (signed char) -19;
  return (V) c;
}

int
main ()
{
  V x = foo ((V) { 31 });
  if (x[0] != 12)
    Mymyabort ();
  return 0;
}
