#include <stdarg.h>

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
