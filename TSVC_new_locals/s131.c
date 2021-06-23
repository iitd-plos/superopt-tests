#include "globals.h"

int s131()
{
//	global data flow analysis
//	forward substitution
  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
	int m  = 2;
		for (int i = 0; i < LEN - 2; i++) {
			local_a[i] = local_a[i + m] + local_b[i];
		}
  print_local1(local_a);
	return 0;
}
