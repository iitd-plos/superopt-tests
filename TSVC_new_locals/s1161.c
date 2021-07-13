#include "globals.h"

int s1161()
{

//	control flow
//	tests for recognition of loop independent dependences
//	between statements in mutually exclusive regions.
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);

		for (int i = 0; i < LEN-1; ++i) {
			if (local_c[i] < (TYPE)0.) {
				goto L20;
			}
			local_a[i] = local_c[i] + local_d[i] * local_e[i];
			goto L10;
L20:
			local_b[i] = local_a[i] + local_d[i] * local_d[i];
L10:
			;
		}
  print_local2(local_a, local_b);
	return 0;
}
