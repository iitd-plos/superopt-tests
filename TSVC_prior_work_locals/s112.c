#include "globals.h"

int s112()
{

//	linear dependence testing
//	loop reversal
  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);

		for (int i = LEN - 2; i >= 0; i--) {
			local_a[i+1] = local_a[i] + local_b[i];
		}
  print_local1(local_a);
	return 0;
}

