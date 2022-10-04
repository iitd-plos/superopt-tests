#include "globals.h"

int s1421()
{

//	storage classes and equivalencing
//	equivalence- no overlap
  TYPE local_b[LEN];
  TYPE* local_xx;
  init_local1(local_b);
	local_xx = &local_b[LEN/2];
		for (int i = 0; i < LEN/2; i++) {
			local_b[i] = local_xx[i] + a[i];
		}
	int sum = 0;
	for (int i = 0; i < LEN/2; i++){
		sum += local_xx[i]; // store sinking in gcc,clang
	}
  temp =sum;
  print_local1(local_b);
	return 0;
}
