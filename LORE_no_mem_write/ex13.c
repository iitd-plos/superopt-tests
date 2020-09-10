#include "globals.h"

//loop 3D (2-sum MW) imperfect 
void ex13()
//void example14() 
{
  int k,j,i=0;
  int len = LEN3;
  for (k = 0; k < len; k++) {
    int sum = 0;
    for (i = 0; i < len; i++)
      for (j = 0; j < len; j++)
          sum += aaa[k][i][j];

    a[k] = sum;
  }

}
