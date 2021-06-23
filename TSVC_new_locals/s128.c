#include "globals.h"

int s128()
{

//	induction variables
//	coupled induction variables
//	jump in data access
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  init_local4(local_a, local_b, local_c, local_d);
	int j, k;
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			k = j + 1;
			local_a[i] = local_b[k] - local_d[i];
			j = k + 1;
			local_b[k] = local_a[i] + local_c[k];
		}
  print_local2(local_a, local_b);
	return 0;
}
