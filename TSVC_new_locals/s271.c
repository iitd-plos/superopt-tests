#include "globals.h"

int s271()
{

//	control flow
//	loop with singularity handling
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local3(local_a, local_b, local_c);
		for (int i = 0; i < LEN; i++) {
			if (local_b[i] > (TYPE)0.) {
				local_a[i] += local_b[i] * local_c[i];
			}
		}
    print_local1(local_a);
	return 0;
}
