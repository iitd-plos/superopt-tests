#include "globals.h"

int s319()
{

//	reductions
//	coupled reductions

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local3(local_c, local_d, local_e);
	TYPE sum;
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			local_a[i] = local_c[i] + local_d[i];
			sum += local_a[i];
			local_b[i] = local_c[i] + local_e[i];
			sum += local_b[i];
		}
	temp = sum;
	return 0;
}

