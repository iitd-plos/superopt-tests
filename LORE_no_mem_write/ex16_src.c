#include "globals_srcdst.h"

//loop unroll complete 1D
//Sum
int ex16()
{

  int sum1 = 0;
	for (int j = 0; j < 3; j++) 
	  sum1 += a[j];
	for (int j = 3; j < LEN; j++) 
	  sum1 += b[j];
	return sum1;
}
