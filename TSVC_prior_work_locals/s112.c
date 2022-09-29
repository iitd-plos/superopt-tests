#include "globals.h"

int s112()
{
//	linear dependence testing
//	loop reversal
  TYPE local_a[LEN];
  init_local1(local_a);
		for (int i = LEN - 2; i >= 0; i--) {
			local_a[i+1] = local_a[i] + b[i];
		}
  print_local1(local_a);
	return 0;
}
