#include "globals.h"

  extern TYPE arr[LEN];
TYPE sum1d(){
  
  init_local1(arr);
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += arr[i];
	return ret;
}


