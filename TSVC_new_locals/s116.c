#include "globals.h"

int s116()
{

//	linear dependence testing
  TYPE local_a[LEN];
  init_local1(local_a);
	
  int i1 = 0;  
	for (int i = 0; i < LEN-5 ; i += 5, i1++) {
		local_a[i]     = local_a[i + 1] * local_a[i];
		local_a[i + 1] = local_a[i + 2] * local_a[i + 1];
		local_a[i + 2] = local_a[i + 3] * local_a[i + 2];
		local_a[i + 3] = local_a[i + 4] * local_a[i + 3];
		local_a[i + 4] = local_a[i + 5] * local_a[i + 4];
	}
  print_local1(local_a);
	return 0;
}
