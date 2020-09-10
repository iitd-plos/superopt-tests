#include "globals.h"

int alpha, beta;
//loop 2D (sum-MW) imperfect
//Store sinking removed
void ex11()
//void kernel_gesummv()
{
  int i, j;
  for (i = 0; i < LEN2; i++)
  {
    int sum1 = 0;
    int sum2 = 0;
    for (j = 0; j < LEN2; j++)
    {
      sum1 += aa[i][j] * c[j];
      sum2 += bb[i][j] * c[j];
    }
    b[i] = alpha * sum1 + beta * sum2;
  }
}
