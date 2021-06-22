#include "globals.h"

int s243()
{

//	node splitting
//	false dependence cycle breaking

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);

		for (int i = 0; i < LEN-1; i++) {
			local_a[i] = local_b[i] + local_c[i  ] * local_d[i];
			local_b[i] = local_a[i] + local_d[i  ] * local_e[i];
			local_a[i] = local_b[i] + local_a[i+1] * local_d[i];
		}
  print_local2(local_a, local_b);
	return 0;
}

