#include"eqchecker_helper.h"
struct s { _Complex unsigned short x; };
struct s gs = { 100 + 200i };
struct s __attribute__((noinline)) foo (void) { return gs; }

int main ()
{
  if (foo ().x != gs.x)
    Mymyabort ();
  exit (0);
}
