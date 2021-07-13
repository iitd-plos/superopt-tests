#include "globals.h"

int s253()
{

//	scalar and array expansion
//	scalar expansio assigned under if

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  init_local4(local_a, local_b, local_c, local_d);
	TYPE s;
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] > local_b[i]) {
				s = local_a[i] - local_b[i] * local_d[i];
				local_c[i] += s;
				local_a[i] = s;
			}
		}
  print_local2(local_a, local_c);
	return 0;
}
