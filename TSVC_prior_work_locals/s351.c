#include "globals.h"

int s351()
{

//	loop rerolling
//	unrolled saxpy
  TYPE local_a[LEN];

	TYPE alpha = c[0];
	int i1 = 0;
		for (int i = 0; i < LEN; i = i+5) {
		  i1++;
			local_a[i]     += alpha * b[i];
			local_a[i + 1] += alpha * b[i + 1];
			local_a[i + 2] += alpha * b[i + 2];
			local_a[i + 3] += alpha * b[i + 3];
			local_a[i + 4] += alpha * b[i + 4];
		}
  print_local1(local_a);
	return 0;
}

