#include "globals.h"

//MW-2d
TYPE ex102(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		  bb[i][j] += aa[i][j];
	return ret;
}
