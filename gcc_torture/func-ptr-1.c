#include"eqchecker_helper.h"
static double f (float a);
static double (*fp) (float a);

main ()
{
  fp = f;
  if (fp ((float) 1) != 1.0)
    Mymyabort ();
  exit (0);
}

static double
f (float a)
{
  return a;
}
