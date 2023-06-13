#include <inttypes.h>

int g[1000];

int sum_positive_global(int n)
{
  int ret = 0;
  for (int i = 0; i < n; i++)
    if (g[i] > 0)
      ret += g[i];
  return ret;
}

int sum_positive_arg(int* arr, int n)
{
  int ret = 0;
  for (int i = 0; i < n; i++)
    if (arr[i] > 0)
      ret += arr[i];
  return ret;
}
