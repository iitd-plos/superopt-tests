#include "globals.h"

int s1111()
{

//	no dependence - vectorizable
//	jump in data access
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  init_local3(local_b, local_c, local_d);


		for (int i = 0; i < LEN/2; i++) {
			local_a[2*i] = local_c[i] * local_b[i] + local_d[i] * local_b[i] + local_c[i] * local_c[i] + local_d[i] * local_b[i] + local_d[i] * local_c[i];
		}
  print_local1(local_a);
	return 0;
}
