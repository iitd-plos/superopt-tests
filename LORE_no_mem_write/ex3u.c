#include "globals.h"

//sum2d-1d
TYPE ex3u(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
    #pragma GCC unroll 2
	  for (int j = 0; j < LEN2; j++)
		 ret += aa[i][j];

  #pragma GCC unroll 2
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	return ret;
}
