#include <stdarg.h>

int variadic_with_loop(unsigned n, ...)
{
  unsigned i;
  va_list args;
  int ret = 0;

  va_start(args, n);
  for (i = 0; i < n; ++i) {
    if (i & 1)
      ret -= va_arg(args, int);
    else
      ret += va_arg(args, int);
  }
  va_end(args);

  return ret;
}
