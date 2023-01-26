#include "globals.h"

int s319()
{

//	reductions
//	coupled reductions

  TYPE local_a[LEN], local_b[LEN];
	TYPE sum;
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			local_a[i] = c[i] + d[i];
			sum += local_a[i];
			local_b[i] = c[i] + e[i];
			sum += local_b[i];
		}
    print_local2(local_a, local_b);
	  temp = sum;
	return 0;
}

