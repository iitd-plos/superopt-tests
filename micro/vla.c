#include <stdarg.h>
#include "eqchecker_helper.h"

int vla_0(unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = i*(i+1);
  }
  return v[0]+v[n-1];
}
  
int vla_11(int* a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  return v[0]+v[n-1];
}

int vla_12(int *a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  int ret = 0;
#pragma clang loop vectorize(disable)
  for (unsigned j = 0; j < n; ++j) {
    ret += v[j];
  }
  return ret;
}

void vla_13(int *a, unsigned n)
{
  if (n == 0)
    return;
  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  MYmyputs("Array:");
#pragma clang loop vectorize(disable)
  for (unsigned j = 0; j < n; ++j) {
    MYmyprint_int(v[j]);
  }
}

int vla_21(int *a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n], w[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
    w[i] = a[i]+a[i];
  }
  return MYmyabs(v[0]+v[n-1]+w[0]+w[n-1]);
}

int vla_22(int* a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n], w[n];
  for (unsigned i = 0; i < n-1; ++i) {
    unsigned vv[i+1];
    vv[0] = a[0];
    for (unsigned j = 1; j <= i; ++j) {
      if (a[j] < 0)
        goto end;
      vv[j] = a[j]+vv[j-1];
    }
    v[i] = vv[i];
    w[i] = a[i]*a[i];
  }
  return v[0]*v[n-1]+w[0]*w[n-1];
end:
  return 0;
}

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
#pragma clang loop vectorize(disable)
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

void baz_vararg(const char* fmt, ...)
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
      MYmyprint_char(*fmt);
    }
 
    va_end(args);
}

int main(int argc, char* argv[])
{
  return 0;
}
