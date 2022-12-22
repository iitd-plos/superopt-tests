#include "globals.h"

int s128()
{

//	induction variables
//	coupled induction variables
//	jump in data access
  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
	int j, k;
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			k = j + 1;
			local_a[i] = local_b[k] - d[i];
			j = k + 1;
			local_b[k] = local_a[i] + c[k];
		}
  print_local2(local_a, local_b);
	return 0;
}
