#include "globals.h"

//MW-1d-2d
TYPE ex105(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		b[i] += a[i];
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		  bb[i][j] += aa[i][j];
	return ret;
}
