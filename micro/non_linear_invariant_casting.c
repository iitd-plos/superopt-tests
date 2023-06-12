#include <stdio.h>

int
non_linear_invariant_casting(int *arr, size_t n)
{
  int ch, ret;

  ch = getchar();
  ret = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (size_t i = 0; i < n; ++i) {
    ret += (arr[i] ^ (unsigned char)ch);
  }
  return ret;
}
