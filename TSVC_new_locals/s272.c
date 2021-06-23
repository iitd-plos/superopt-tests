#include "globals.h"

int s272(TYPE t)
{

//	control flow
//	loop with independent conditional

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);
		for (int i = 0; i < LEN; i++) {
			if (local_e[i] >= t) {
				local_a[i] += local_c[i] * local_d[i];
				local_b[i] += local_c[i] * local_c[i];
			}
		}
  print_local2(local_a, local_b);
	return 0;
}
