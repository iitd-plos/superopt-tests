#include"eqchecker_helper.h"
#include <stdarg.h>

typedef double TYPE;

void vafunction (TYPE dummy1, TYPE dummy2, ...)
{
  va_list ap;

  va_start(ap, dummy2);
  if (dummy1 != 888.)
    Mymyabort();
  if (dummy2 != 999.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 1.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 2.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 3.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 4.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 5.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 6.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 7.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 8.)
    Mymyabort();
  if (va_arg (ap, TYPE) != 9.)
    Mymyabort();
  va_end(ap);
}


int main (void)
{
  vafunction( 888., 999., 1., 2., 3., 4., 5., 6., 7., 8., 9. );
  exit(0);
  return 0;
}
