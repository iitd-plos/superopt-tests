#include "globals.h"

int s111()
{

//	linear dependence testing
//	no dependence - vectorizable
  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);

		for (int i = 1; i < LEN; i += 2) {
			local_a[i] = local_a[i - 1] + local_b[i];
		}
  print_local1(local_a);
	return 0;
}


