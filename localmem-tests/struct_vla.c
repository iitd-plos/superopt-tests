// Compiles only with GCC!
#if defined(__GNUC__) && !defined(__clang__)

#include<stdarg.h>
int
foo(int n, ...)
{
  int sum = 0;
  va_list  argptr;
  va_start(argptr, n);
  for (int i = 0; i < n; i++) {
    sum += va_arg(argptr, int);
  }
  va_end(argptr);
  return sum;
}
int main(int argc, char **argv)
{
  struct s {
    int a[argc + 1];
  };
  struct s x;
  int (*f)(int, struct s);
  f = (int (*)(int, struct s))foo;
  return foo(argc, x);
}

#else

int main()
{
  return 0;
}

#endif
