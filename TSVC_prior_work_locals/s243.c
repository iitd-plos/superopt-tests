#include "globals.h"

int s243()
{

//	node splitting
//	false dependence cycle breaking

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);

		for (int i = 0; i < LEN-1; i++) {
			local_a[i] = local_b[i] + c[i  ] * d[i];
			local_b[i] = local_a[i] + d[i  ] * e[i];
			local_a[i] = local_b[i] + local_a[i+1] * d[i];
		}
  print_local2(local_a, local_b);
	return 0;
}

