#include "globals.h"

int s251()
{

//	scalar and array expansion
//	scalar expansion

  TYPE local_a[LEN];
	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = b[i] + c[i] * d[i];
			local_a[i] = s * s;
		}
  print_local1(local_a);
	return 0;
}

