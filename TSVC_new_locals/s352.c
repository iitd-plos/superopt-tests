#include "globals.h"

int s352()
{

//	loop rerolling
//	unrolled dot product
  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
	TYPE dot;
		dot = (TYPE)0.;
	  int i1=0;
		for (int i = 0; i < LEN; i += 5) {
			i1++;
			dot = dot + local_a[i] * local_b[i] + local_a[i + 1] * local_b[i + 1] + local_a[i + 2]
				* local_b[i + 2] + local_a[i + 3] * local_b[i + 3] + local_a[i + 4] * local_b[i + 4];
		}
	temp = dot;
	return 0;
}

