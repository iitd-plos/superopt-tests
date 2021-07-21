#include <stdarg.h>

int variadic_acyclic(unsigned n, ...)
{
  if (n == 0 || n > 2)
    return 0;
  va_list args;
  va_start(args, n);
  unsigned ret = va_arg(args, unsigned);
  return n == 1 ? ret : ret + va_arg(args, unsigned);
}
