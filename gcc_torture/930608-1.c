#include"eqchecker_helper.h"
double f (double a) {}
double (* const a[]) (double) = {&f};

main ()
{
  double (*p) ();
  p = &f;
  if (p != a[0])
    Mymyabort ();
  exit (0);
}
