#include "globals_srcdst.h"

//loop unroll complete 1D
//MW
int ex1011()
{

  int sum1 = 0;
	c[0] += a[0];
	c[1] += a[1];
	c[2] += a[2];
	for (int j = 3; j < LEN; j++) 
	  c[j] += b[j];
	return 0;
}
