#include "globals.h"

int s2244()
{

//	node splitting
//	cycle with ture and anti dependency
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  TYPE local_e[LEN];
  init_local4(local_a, local_b, local_c, local_e);

		for (int i = 0; i < LEN-1; i++) {
			local_a[i+1] = local_b[i] + local_e[i];
			local_a[i] = local_b[i] + local_c[i];
		}
  print_local1(local_a);
	return 0;
}

