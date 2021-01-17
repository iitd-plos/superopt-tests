#include "globals.h"

//sum1d
TYPE ex1(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	return ret;
}
