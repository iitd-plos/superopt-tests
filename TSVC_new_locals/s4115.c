#include "globals.h"

int s4115(int* /*__restrict__*/ ip)
{

//	indirect addressing
//	sparse dot product
//	gather is required

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
	TYPE sum;
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			sum += local_a[i] * local_b[ip[i]];
		}
	temp = sum;
	return 0;
}

