#include "globals.h"

int s273()
{

//	control flow
//	simple loop with dependent conditional

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local3(local_a, local_b, local_c);
		for (int i = 0; i < LEN; i++) {
			local_a[i] += d[i] * e[i];
			if (local_a[i] < (TYPE)0.)
				local_b[i] += d[i] * e[i];
			local_c[i] += local_a[i] * d[i];
		}
    print_local3(local_a, local_b, local_c);
	return 0;
}
