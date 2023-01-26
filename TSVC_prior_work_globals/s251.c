#include "globals.h"

  extern TYPE a[LEN];
int s251()
{

//	scalar and array expansion
//	scalar expansion

	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = b[i] + c[i] * d[i];
			a[i] = s * s;
		}
  print_local1(a);
	return 0;
}

