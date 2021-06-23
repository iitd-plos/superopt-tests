#include "globals.h"

int s471(){

  TYPE local_x[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_x, local_b, local_c, local_d, local_e);
	int m = LEN;
		for (int i = 0; i < m; i++) {
			local_x[i] = local_b[i] + local_d[i] * local_d[i];
			local_b[i] = local_c[i] + local_d[i] * local_e[i];
		}
  int sum = 0;
	for (int i = 0; i < LEN; i++){
		sum += local_x[i]; // store sinking in gcc,clang
	}
  temp =sum;
  print_local1(local_b);
	return 0;
}

