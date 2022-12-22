#include "globals.h"

int s274()
{

//	control flow
//	complex loop with dependent conditional

  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);
		for (int i = 0; i < LEN; i++) {
			local_a[i] = c[i] + e[i] * d[i];
			if (local_a[i] > (TYPE)0.) {
				local_b[i] = local_a[i] + local_b[i];
			} else {
				local_a[i] = d[i] * e[i];
			}
		}
  print_local2(local_a, local_b);
	return 0;
}

