#include "globals.h"

TYPE sum1d(){
  
  TYPE local_arr[LEN];
  init_local1(local_arr);
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += local_arr[i];
	return ret;
}


