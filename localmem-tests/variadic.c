#include <stdarg.h>
//#include "eqchecker_helper.h"

int variadic_0(unsigned n, ...)
{
  if (n == 0 || n > 2)
    return 0;
  va_list args;
  va_start(args, n);
  unsigned ret = va_arg(args, unsigned);
  return n == 1 ? ret : ret + va_arg(args, unsigned);
}

int variadic_1(unsigned n, ...)
{
  unsigned i;
  va_list args;
  int ret = 0;

  va_start(args, n);
#pragma clang loop vectorize(disable) unroll(disable)
  for (i = 0; i < n; ++i) {
    DBG(__LINE__);
    if (i & 1)
      ret -= va_arg(args, int);
    else
      ret += va_arg(args, int);
  }
  va_end(args);

  return ret;
}

void variadic_2(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);
 
    for ( ; *fmt; ++fmt) {
      DBG(__LINE__);
      if (*fmt == 'd') {
        int i = va_arg(args, int);
        MYmyprint_int(i);
        continue;
      }
      int c = (char)*fmt;
      if (*fmt == 'c') {
        // A 'char' variable will be promoted to 'int'
        // A character literal in C is already 'int' by itself
        c = va_arg(args, int);
      }
      MYmyprint_char(c);
    }
 
    va_end(args);
}

//int main(int argc, char* argv[])
//{
//  return 0;
//}
