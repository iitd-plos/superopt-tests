#include "globals.h"

//MW-1d
TYPE ex101(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		b[i] += a[i];
	return ret;
}
