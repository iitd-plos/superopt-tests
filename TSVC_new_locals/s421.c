#include "globals.h"

int s421()
{

//	storage classes and equivalencing
//	equivalence- no overlap
  TYPE local_a[LEN], local_arr[LEN];
  init_local2(local_a, local_arr);
  TYPE* yy = local_arr;
		for (int i = 0; i < LEN - 1; i++) {
			local_arr[i] = yy[i+1] + local_a[i];
		}
	int sum = 0;
	for (int i = 0; i < LEN; i++){
		sum += local_arr[i];
	}
  temp =sum;
	return 0;
}

