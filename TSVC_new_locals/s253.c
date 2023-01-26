#include "globals.h"

int s253()
{

//	scalar and array expansion
//	scalar expansio assigned under if

  TYPE local_a[LEN];
  TYPE local_c[LEN];
  init_local2(local_a, local_c);
	TYPE s;
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] > b[i]) {
				s = local_a[i] - b[i] * d[i];
				local_c[i] += s;
				local_a[i] = s;
			}
		}
  print_local2(local_a, local_c);
	return 0;
}
