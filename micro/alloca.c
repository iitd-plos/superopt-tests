#include <alloca.h>

int alloca_0(int n)
{
  if (n < 1) {
    return 0;
  }
  int* p = (int*)alloca(n*sizeof(n));
  p[0] = 0;
#pragma clang loop vectorize(disable)
  for (int i = 1; i < n; ++i) {
    p[i] = p[i-1] + i*i;
  }
  return p[n-1];
}

int main()
{
  return 0;
}
