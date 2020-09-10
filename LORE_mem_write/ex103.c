#include "globals.h"

//MW-2d-1d
TYPE ex103(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		 bb[i][j] += aa[i][j];
	for (int i = 0; i < LEN; i++)
		b[i] += a[i];
	return ret;
}
