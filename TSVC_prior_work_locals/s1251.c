#include "globals.h"

int s1251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);

	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = local_b[i] + c[i];
			local_b[i] = local_a[i] + d[i];
			local_a[i] = s*e[i];
		}
  print_local2(local_a, local_b);
	return 0;
}
