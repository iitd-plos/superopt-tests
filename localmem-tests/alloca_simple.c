#include <alloca.h>

int alloca_simple(int n)
{
  if (n < 1) {
    return 0;
  }
  int* p = (int*)alloca(n*sizeof(n));
  for (int i = 0; i < n; ++i) {
    MYmyDBG();
    p[i] = i*i;
  }
  return p[0]*p[n-1];
}
