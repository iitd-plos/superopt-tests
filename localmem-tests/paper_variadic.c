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

int variadic_with_loop(unsigned n, ...)
{
  unsigned i;
  va_list args;
  int ret = 0;

  va_start(args, n);
  for (i = 0; i < n; ++i) {
    MYmyDBG();
    if (i & 1)
      ret -= va_arg(args, int);
    else
      ret += va_arg(args, int);
  }
  va_end(args);

  return ret;
}
