#include "globals.h"

int s131()
{
//	global data flow analysis
//	forward substitution
  TYPE local_a[LEN];
  init_local1(local_a);
	int m  = 2;
		for (int i = 0; i < LEN - 2; i++) {
			local_a[i] = local_a[i + m] + b[i];
		}
  print_local1(local_a);
	return 0;
}
