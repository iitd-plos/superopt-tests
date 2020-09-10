#include "globals.h"

//loop 2D (sum-MW) perfect
void ex10()
//void kernel_atax()
{
  int i, j;

  for (i = 0; i < LEN2; i++)
  {
    int sum1 = 0;
    for (j = 0; j < LEN2; j++)
      sum1 += aa[i][j] * b[j];
    for (j = 0; j < LEN2; j++)
      c[j] += aa[i][j] * sum1;
  }
}
