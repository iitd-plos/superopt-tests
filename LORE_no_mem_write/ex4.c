#include "globals.h"

//sum2d-1d-imperfect
TYPE ex4(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++) {
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
		ret += a[i];
  }
	return ret;
}
