#include "globals.h"

int s1281()
{

//	crossing thresholds
//	index set splitting
//	reverse data access

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
	
  TYPE x;
		for (int i = 0; i < LEN; i++) {
			x = local_b[i] * c[i] + local_a[i] * d[i] + e[i];
			local_a[i] = x-(TYPE)1.0;
			local_b[i] = x;
		}
  print_local2(local_a, local_b);
	return 0;
}
