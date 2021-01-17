#include "globals_srcdst.h"

//loop unroll complete 1D
//MW
int ex1011()
{

  int sum1 = 0;
	for (int j = 0; j < 3; j++) 
	  c[j] += a[j];
	for (int j = 3; j < LEN; j++) 
	  c[j] += b[j];
	return 0;
}

