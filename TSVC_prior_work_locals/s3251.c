#include "globals.h"

int s3251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_d[LEN];
  init_local2(local_a, local_b);

		for (int i = 0; i < LEN-1; i++){
			local_a[i+1] = local_b[i] + c[i];
			local_b[i]   = c[i] * e[i];
			local_d[i]   = local_a[i] * e[i];
		}
  print_local3(local_a, local_b, local_d);
	return 0;
}

