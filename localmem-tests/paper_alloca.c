#include <alloca.h>

int alloca_simple(int n)
{
  if (n < 1) {
    return 0;
  }
  int* p = (int*)alloca(n*sizeof(n));
  p[0] = 0;
  for (int i = 1; i < n; ++i) {
    MYmyDBG();
    p[i] = p[i-1] + i*i;
  }
  return p[n-1];
}
