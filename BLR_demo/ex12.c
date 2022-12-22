#include "globals.h"

//loop 2D (sum-sum MW) imperfect
//Store sinking removed
void ex12()
//void kernel_mvt()
{
  int i, j;

  for (i = 0; i < LEN2; i++) {
    int sum1 = a[i]; int sum2 = b[i];
    for (j = 0; j < LEN2; j++)
      sum1 += aa[i][j] * b[j];
    for (j = 0; j < LEN2; j++)
      sum2 += aa[j][i] * b[j];
    a[i] = sum1;
    b[i] = sum2;
  }
}
