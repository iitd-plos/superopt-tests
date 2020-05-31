#include"eqchecker_helper.h"
/* PR target/64979 */

#include <stdarg.h>

void __attribute__((noinline, noclone))
bar (int x, va_list *ap)
{
  if (ap)
    {
      int i;
      for (i = 0; i < 10; i++)
	if (i != va_arg (*ap, int))
	  Mymyabort ();
      if (va_arg (*ap, double) != 0.5)
	Mymyabort ();
    }
}

void __attribute__((noinline, noclone))
foo (int x, ...)
{
  va_list ap;
  int n;

  va_start (ap, x);
  n = va_arg (ap, int);
  bar (x, (va_list *) ((n == 0) ? ((void *) 0) : &ap));
  va_end (ap);
}

int
main ()
{
  foo (100, 1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0.5);
  return 0;
}
