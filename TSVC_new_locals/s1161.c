#include "globals.h"

int s1161()
{

//	control flow
//	tests for recognition of loop independent dependences
//	between statements in mutually exclusive regions.
  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_a);

		for (int i = 0; i < LEN-1; ++i) {
			if (c[i] < (TYPE)0.) {
				goto L20;
			}
			local_a[i] = c[i] + d[i] * e[i];
			goto L10;
L20:
			local_b[i] = local_a[i] + d[i] * d[i];
L10:
			;
		}
  print_local2(local_a, local_b);
	return 0;
}
