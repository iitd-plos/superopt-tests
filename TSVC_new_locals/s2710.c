#include "globals.h"

int s2710( TYPE x)
{

//	control flow
//	scalar and vector ifs

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] > local_b[i]) {
				local_a[i] += local_b[i] * local_d[i];
				if (LEN > 10) {
					local_c[i] += local_d[i] * local_d[i];
				} else {
					local_c[i] = local_d[i] * local_e[i] + (TYPE)1.;
				}
			} else {
				local_b[i] = local_a[i] + local_e[i] * local_e[i];
				if (x > (TYPE)0.) {
					local_c[i] = local_a[i] + local_d[i] * local_d[i];
				} else {
					local_c[i] += local_e[i] * local_e[i];
				}
			}
		}
    print_local3(local_a, local_b, local_c);
	return 0;
}

