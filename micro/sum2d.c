#include <inttypes.h>

int g[100][400];

int sum2d_global(int m, int n)
{
  int ret = 0;
  for (int i = 0; i < m; i++)
    for (int j = 0; j < n; j++)
      ret += g[i][j];
  return ret;
}

int sum2d_arg(int* arr[], int m, int n)
{
  int ret = 0;
  for (int i = 0; i < m; i++)
    for (int j = 0; j < n; j++)
      ret += arr[i][j];
  return ret;
}
