#include "globals.h"

int s471(){

  TYPE local_x[LEN], local_b[LEN];
  init_local1(local_b);
	int m = LEN;
		for (int i = 0; i < m; i++) {
			local_x[i] = local_b[i] + d[i] * d[i];
			local_b[i] = c[i] + d[i] * e[i];
		}
  int sum = 0;
	for (int i = 0; i < LEN; i++){
		sum += local_x[i]; // store sinking in gcc,clang
	}
  temp =sum;
  print_local1(local_b);
	return 0;
}

