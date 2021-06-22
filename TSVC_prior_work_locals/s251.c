#include "globals.h"

int s251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  init_local3(local_b, local_c, local_d);
	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = local_b[i] + local_c[i] * local_d[i];
			local_a[i] = s * s;
		}
  print_local1(local_a);
	return 0;
}

