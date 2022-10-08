#include "globals.h"

int s272(TYPE t)
{

//	control flow
//	loop with independent conditional

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
		for (int i = 0; i < LEN; i++) {
			if (e[i] >= t) {
				local_a[i] += c[i] * d[i];
				local_b[i] += c[i] * c[i];
			}
		}
  print_local2(local_a, local_b);
	return 0;
}
