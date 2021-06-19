#include "globals.h"

int s1112()
{

//	linear dependence testing
//	loop reversal
  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);

		for (int i = LEN - 1; i >= 0; i--) {
			local_a[i] = local_b[i] + val;
		}
  print_local1(local_a);
	return 0;
}
