#include "globals.h"

//2-way branch 1D loop
//Sum
int ex8 ()
{
  int i;
  int sum = 0;
  for (i = 0; i < LEN; i++)
    sum += a[i] < 0 ? x : y;
  return sum;
}
