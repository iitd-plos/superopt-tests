#include "globals.h"

//loop 3D (2-sum MW) imperfect 
void ex13()
//void example14() 
{
  int k,j,i=0;
  int len = LEN2/2;
  for (k = 0; k < len; k++) {
    int sum = 0;
    for (i = 0; i < len; i++)
      #pragma GCC unroll 2
      for (j = 0; j < len; j++)
          sum += aa[i+k][j] * bb[i][j];

    a[k] = sum;
  }

}
