#include "globals.h"

//sum1d-2d
TYPE ex5u(){
	TYPE ret = 0.;
  #pragma GCC unroll 2
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	for (int i = 0; i < LEN2; i++)
    #pragma GCC unroll 2
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
	return ret;
}
