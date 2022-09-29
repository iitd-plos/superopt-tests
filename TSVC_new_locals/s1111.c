#include "globals.h"

int s1111()
{

//	no dependence - vectorizable
//	jump in data access
  TYPE local_a[LEN];


		for (int i = 0; i < LEN/2; i++) {
			local_a[2*i] = c[i] * b[i] + d[i] * b[i] + c[i] * c[i] + d[i] * b[i] + d[i] * c[i];
		}
  print_local1(local_a);
	return 0;
}
