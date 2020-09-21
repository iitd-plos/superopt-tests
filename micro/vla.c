#include <stdarg.h>

//void bar_vla(unsigned n, unsigned m, int a[n][m])
//{
//  for (unsigned i = 0; i < n; ++i) {
//    for (unsigned j = 0; j < m; ++j) {
//      a[i][j] = i*i + j;
//    }
//  }
//}

//int baz_variadic(int n, ...)
//{
//  int i;
//  va_list args;
//  int ret = 0;
//
//  va_start(args, n);
//#pragma clang loop vectorize(disable)
//  for (i = 0; i < n; ++i) {
//    ret += va_arg(args, int);
//  }
//  va_end(args);
//
//  return ret;
//}

int foo_vla(int *a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  return v[0]*v[n-1]*sizeof(v);
}

int vla_2(int* a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
  int w[n];
  for (unsigned i = 0; i < n-1; ++i) {
    unsigned vv[i+1];
    vv[0] = a[0];
    for (unsigned j = 1; j <= i; ++j) {
      if (a[i] < 0)
        goto end;
      vv[i] = a[i]+vv[i-1];
    }
    v[i] = vv[i];
    w[i] = a[i]*a[i];
  }
  return v[0]*v[n-1]*sizeof(v)*w[0]*w[n-1];
end:
  return 0;
}

int variadic_1(unsigned n, ...)
{
  unsigned i;
  va_list args;
  int ret = 0;

  va_start(args, n);
#pragma clang loop vectorize(disable)
  for (i = 0; i < n; ++i) {
    if (i & 1)
      ret -= va_arg(args, int);
    else
      ret += va_arg(args, int);
  }
  va_end(args);

  return ret;
}

int variadic_easy(unsigned n, ...)
{
  if (n == 0 || n > 2)
    return 0;
  va_list args;
  va_start(args, n);
  unsigned ret = va_arg(args, unsigned);
  return n == 1 ? ret : ret + va_arg(args, unsigned);
}

int main(int argc, char* argv[])
{
  return 0;
}
