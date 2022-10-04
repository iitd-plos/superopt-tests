#include "globals.h"

int s423()
{

//	storage classes and equivalencing
//	common and equivalenced variables - with anti-dependence

  TYPE local_array[LEN];
  init_local1(local_array);
	int vl = 64;
	TYPE* xx = local_array+vl;
		for (int i = 0; i < LEN - 1; i++) {
			local_array[i+1] = xx[i] + a[i];
		}
  int sum = 0;
	for (int i = 0; i < LEN; i++){
		sum += local_array[i]; // store sinking in gcc, clang
	}
  temp =sum;
	return 0;
}
