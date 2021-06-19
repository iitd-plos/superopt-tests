#include "globals.h"

int s1251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local1(local_a);
  init_local1(local_b);
  init_local1(local_c);
  init_local1(local_d);
  init_local1(local_e);

	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = local_b[i] + local_c[i];
			local_b[i] = local_a[i] + local_d[i];
			local_a[i] = s*local_e[i];
		}
  print_local1(local_a);
  print_local1(local_b);
	return 0;
}
