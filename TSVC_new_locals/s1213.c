#include "globals.h"

int s1213()
{

//	statement reordering
//	dependency needing temporary

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
		for (int i = 1; i < LEN-1; i++) {
			local_a[i] = local_b[i-1] + c[i];
			local_b[i] = local_a[i+1] * d[i];
		}
  print_local2(local_a, local_b);
	return 0;
}
