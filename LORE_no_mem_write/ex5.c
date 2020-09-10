#include "globals.h"

//sum1d-2d
TYPE ex5(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
	return ret;
}
