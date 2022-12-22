#include "globals.h"

int s113()
{

//	linear dependence testing
//	a(i)=a(1) but no actual dependence cycle
  TYPE local_a[LEN];
  init_local1(local_a);

		for (int i = 1; i < LEN; i++) {
			local_a[i] = local_a[0] + b[i];
		}
  print_local1(local_a);
	return 0;
}
