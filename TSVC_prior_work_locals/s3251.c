#include "globals.h"

int s3251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local4(local_a, local_b, local_c, local_e);

		for (int i = 0; i < LEN-1; i++){
			local_a[i+1] = local_b[i] + local_c[i];
			local_b[i]   = local_c[i] * local_e[i];
			local_d[i]   = local_a[i] * local_e[i];
		}
  print_local3(local_a, local_b, local_d);
	return 0;
}

