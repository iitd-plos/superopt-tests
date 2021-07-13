#include "globals.h"

int s1279()
{

//	control flow
//	vector if/gotos
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] < (TYPE)0.) {
				if (local_b[i] > local_a[i]) {
					local_c[i] += local_d[i] * local_e[i];
				}
			}
		}
    print_local1(local_c);
	return 0;
}
