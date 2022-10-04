#include "globals.h"

int s111()
{

//	linear dependence testing
//	no dependence - vectorizable
  TYPE local_a[LEN];
  init_local1(local_a);

		for (int i = 1; i < LEN; i += 2) {
			local_a[i] = local_a[i - 1] + b[i];
		}
  print_local1(local_a);
	return 0;
}


