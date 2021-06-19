#include "globals.h"

int s173()
{
//	symbolics
//	expression in loop bounds and subscripts

  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_a);
  init_local1(local_b);
	
  int k = LEN/2;
		for (int i = 0; i < LEN/2; i++) {
			local_a[i+k] = local_a[i] + local_b[i];
		}
  print_local1(local_a);
	return 0;
}

