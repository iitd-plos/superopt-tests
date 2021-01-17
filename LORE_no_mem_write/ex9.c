#include "globals.h"

//loop 2D (sum-MW-MW) imperfect
//Store sinking removed
void ex9()
//void kernel_atax()
{
  int i, j;

  for (i = 0; i < LEN2; i++)
  {
    int sum1 = 0;
    for (j = 0; j < LEN2; j++)
      sum1 += aa[i][j] * b[j];
    e[i] = sum1;
    for (j = 0; j < LEN2; j++)
      c[j] += aa[i][j] * e[i];
  }
}
