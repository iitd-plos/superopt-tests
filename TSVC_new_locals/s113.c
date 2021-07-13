#include "globals.h"

int s113()
{

//	linear dependence testing
//	a(i)=a(1) but no actual dependence cycle
  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);

		for (int i = 1; i < LEN; i++) {
			local_a[i] = local_a[0] + local_b[i];
		}
  print_local1(local_a);
	return 0;
}
