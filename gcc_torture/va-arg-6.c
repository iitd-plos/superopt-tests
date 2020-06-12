#include"eqchecker_helper.h"
#include <stdarg.h>

f (int n, ...)
{
  va_list args;

  va_start (args, n);

  if (va_arg (args, int) != 10)
    Mymyabort ();
  if (va_arg (args, long long) != 10000000000LL)
    Mymyabort ();
  if (va_arg (args, int) != 11)
    Mymyabort ();
  if (va_arg (args, long double) != 3.14L)
    Mymyabort ();
  if (va_arg (args, int) != 12)
    Mymyabort ();
  if (va_arg (args, int) != 13)
    Mymyabort ();
  if (va_arg (args, long long) != 20000000000LL)
    Mymyabort ();
  if (va_arg (args, int) != 14)
    Mymyabort ();
  if (va_arg (args, double) != 2.72)
    Mymyabort ();

  va_end(args);
}

main ()
{
  f (4, 10, 10000000000LL, 11, 3.14L, 12, 13, 20000000000LL, 14, 2.72);
  exit (0);
}
