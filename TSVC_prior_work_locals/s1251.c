#include "globals.h"

int s1251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local5(local_a, local_b, local_c, local_d, local_e);

	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = local_b[i] + local_c[i];
			local_b[i] = local_a[i] + local_d[i];
			local_a[i] = s*local_e[i];
		}
  print_local2(local_a, local_b);
	return 0;
}
