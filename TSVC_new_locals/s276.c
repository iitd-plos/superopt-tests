#include "globals.h"

int s276()
{

//	control flow
//	if test using loop index

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  init_local4(local_b, local_c, local_d, local_a);
	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i+1 < mid) {
				local_a[i] += local_b[i] * local_c[i];
			} else {
				local_a[i] += local_b[i] * local_d[i];
			}
		}
  print_local1(local_a);
	return 0;
}

