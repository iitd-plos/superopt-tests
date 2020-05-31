#include"eqchecker_helper.h"
#include <limits.h>

extern void Mymyabort (void);
int __attribute__((noinline))
foo (unsigned int u)
{
  return (int)(u + 4) < (int)u;
}

int
main (int argc, char *argv[])
{
  unsigned int u = INT_MAX;

  if (foo (u) == 0)
    Mymyabort();
  return 0;
}

