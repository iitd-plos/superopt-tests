#include "globals.h"

int s1281()
{

//	crossing thresholds
//	index set splitting
//	reverse data access

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);
	
  TYPE x;
		for (int i = 0; i < LEN; i++) {
			x = local_b[i] * local_c[i] + local_a[i] * local_d[i] + local_e[i];
			local_a[i] = x-(TYPE)1.0;
			local_b[i] = x;
		}
  print_local2(local_a, local_b);
	return 0;
}
