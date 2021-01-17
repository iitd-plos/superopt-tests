#include "globals_srcdst.h"

//loop unroll complete 1D
//Sum
int ex16()
{

  int sum1 = 0;
	sum1 += a[0];
	sum1 += a[1];
	sum1 += a[2];
	for (int j = 3; j < LEN; j++) 
	  sum1 += b[j];
	return sum1;
}
