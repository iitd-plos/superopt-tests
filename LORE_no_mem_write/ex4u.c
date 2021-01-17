#include "globals.h"

//sum2d-1d-imperfect
TYPE ex4u(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++) {
     #pragma GCC unroll 2
	   for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
		ret += a[i];
  }
	return ret;
}
