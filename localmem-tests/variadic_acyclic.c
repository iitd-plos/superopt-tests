#include <stdarg.h>

int variadic_acyclic(unsigned n, ...)
{
  va_list args;
  unsigned ret;

  if (n == 0 || n > 2)
    return 0;
  va_start(args, n);
  ret = va_arg(args, unsigned);
  return n == 1 ? ret : ret + va_arg(args, unsigned);
}
