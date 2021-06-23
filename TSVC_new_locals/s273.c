#include "globals.h"

int s273()
{

//	control flow
//	simple loop with dependent conditional

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);
		for (int i = 0; i < LEN; i++) {
			local_a[i] += local_d[i] * local_e[i];
			if (local_a[i] < (TYPE)0.)
				local_b[i] += local_d[i] * local_e[i];
			local_c[i] += local_a[i] * local_d[i];
		}
    print_local2(local_b, local_c);
	return 0;
}
