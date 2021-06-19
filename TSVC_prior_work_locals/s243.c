#include "globals.h"

int s243()
{

//	node splitting
//	false dependence cycle breaking

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local1(local_a);
  init_local1(local_b);
  init_local1(local_c);
  init_local1(local_d);
  init_local1(local_e);

		for (int i = 0; i < LEN-1; i++) {
			local_a[i] = local_b[i] + local_c[i  ] * local_d[i];
			local_b[i] = local_a[i] + local_d[i  ] * local_e[i];
			local_a[i] = local_b[i] + local_a[i+1] * local_d[i];
		}
  print_local1(local_a);
  print_local1(local_b);
	return 0;
}

