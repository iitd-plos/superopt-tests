#include "globals.h"

//3-way branch 1D loop
//Sum
int ex7()
{

  int sum = 0;
  for (int i = 0; i < LEN; i++) {
    if (d[i] < (TYPE)0.) {
      sum--;
    } else if (d[i] == (TYPE)0.) {
      sum = sum;
    } else {
      sum++;
    }   
  }
  return sum;
}
