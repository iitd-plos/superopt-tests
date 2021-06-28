#include <stdarg.h>

int vla_2_single_loop(int *a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
  int w[n];
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = a[i]*a[i];
    w[i] = a[i]+a[i];
  }
  return MYmyabs(v[0]+v[n-1]+w[0]+w[n-1]);
}

int vla_2_nested_loops(int* a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
  int w[n];
  for (unsigned i = 0; i < n-1; ++i) {
    MYmyDBG();
    unsigned vv[i+1];
    vv[0] = a[0];
    for (unsigned j = 1; j <= i; ++j) {
      MYmyDBG();
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
