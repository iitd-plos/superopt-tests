#include "globals.h"

int s2710( TYPE x)
{

//	control flow
//	scalar and vector ifs

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local3(local_a, local_b, local_c);
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] > local_b[i]) {
				local_a[i] += local_b[i] * d[i];
				if (LEN > 10) {
					local_c[i] += d[i] * d[i];
				} else {
					local_c[i] = d[i] * e[i] + (TYPE)1.;
				}
			} else {
				local_b[i] = local_a[i] + e[i] * e[i];
				if (x > (TYPE)0.) {
					local_c[i] = local_a[i] + d[i] * d[i];
				} else {
					local_c[i] += e[i] * e[i];
				}
			}
		}
    print_local3(local_a, local_b, local_c);
	return 0;
}

