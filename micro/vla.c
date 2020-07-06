#include "eqchecker_helper.h"
#include <stdarg.h>

int foo_vla(int *a, unsigned n)
{
  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  return /*v[0]**/v[n-1]*sizeof(v);
}

//int multi_vla(int* a, unsigned n)
//{
//  if (a[0] > 0) {
//    int v[n];
//#pragma clang loop vectorize(disable)
//    for (unsigned i = 0; i < n; ++i) {
//      v[i] = a[i]*a[i];
//    }
//    return v[0]*v[n-1]*sizeof(v);
//  } else {
//    int v[n+1];
//    v[0] = -1;
//#pragma clang loop vectorize(disable)
//    for (unsigned i = 0; i < n; ++i) {
//      v[i+1] = a[i]*a[i];
//    }
//    return v[0]*v[n]*sizeof(v);
//  }
//}

void baz_vararg(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);
 
    while (*fmt != '\0') {
        if (*fmt == 'd') {
            int i = va_arg(args, int);
            printf("%d\n", i);
        } else if (*fmt == 'c') {
            // A 'char' variable will be promoted to 'int'
            // A character literal in C is already 'int' by itself
            int c = va_arg(args, int);
            printf("%c\n", c);
        }
        ++fmt;
    }
 
    va_end(args);
}
 
//void bar_vla(unsigned n, int a[*]);

int main(int argc, char* argv[])
{
  //int vla[argc];
  //bar_vla(argc, vla);
  //return vla[0]*vla[argc-1];
  return 0;
}

//void bar_vla(unsigned n, int a[n])
//{
//  for (unsigned i = 0; i < n; ++i) {
//    a[i] = i*i;
//  }
//}
