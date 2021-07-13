#include "globals.h"

int s351()
{

//	loop rerolling
//	unrolled saxpy
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local3(local_a, local_b, local_c);

	TYPE alpha = local_c[0];
	int i1 = 0;
		for (int i = 0; i < LEN; i = i+5) {
		  i1++;
			local_a[i]     += alpha * local_b[i];
			local_a[i + 1] += alpha * local_b[i + 1];
			local_a[i + 2] += alpha * local_b[i + 2];
			local_a[i + 3] += alpha * local_b[i + 3];
			local_a[i + 4] += alpha * local_b[i + 4];
		}
  print_local1(local_a);
	return 0;
}

