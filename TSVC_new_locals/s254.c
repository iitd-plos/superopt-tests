#include "globals.h"

int s254()
{

  //	scalar and array expansion
  //	carry around variable

  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);
	TYPE x;
	x = local_b[LEN-1];
	for (int i = 0; i < LEN; i++) {
		local_a[i] = (local_b[i] + x) * (TYPE).5;
//		a[i] = (b[i] + x) / 2;
		x = local_b[i];
	}
  print_local1(local_a);
	return 0;
}

