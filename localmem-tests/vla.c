#include <stdarg.h>
//#include "eqchecker_helper.h"

int vla_0(unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
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
#pragma clang loop vectorize(disable) unroll(disable)
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
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  int ret = 0;
#pragma clang loop vectorize(disable) unroll(disable)
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
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  MYmyputs("Array:");
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned j = 0; j < n; ++j) {
    MYmyprint_int(v[j]);
  }
}

// local declaration not on entry edge
int vla_14(int* a, unsigned n, int* b)
{
  if (n == 0)
    return 0;

  b[0] = a[0];
  int mx = a[0];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 1; i < n; ++i) {
    b[i] = b[i-1] + a[i];
    if (a[i] > mx)
      mx = a[i];
  }
  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = (mx-a[i])*b[i];
  }
  return v[0] > v[n-1] ? v[0] : v[n-1];
}

int vla_21(int *a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n], w[n];
#pragma clang loop vectorize(disable) unroll(disable)
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

int vlax_0(char* s)
{
  if (!s)
    return 0;
  int n = strlen(s);
  char* a;
  if (n < 4096) {
    a = alloca(n);
  } else {
    a = malloc(n);
  }
  for (int i = 0; i < n; ++i) {
    a[i] = s[i] ^ 1;
  }
  int ret = 0;
  for (int i = 0; i < n; ++i) {
    ret += a[i];
  }
  if (!(n < 4096))
    free(a);
  return ret;
}

//int main(int argc, char* argv[])
//{
//  return 0;
//}
