#include "globals.h"

  extern TYPE a[LEN], b[LEN];
  extern TYPE d[LEN];
int s3251()
{

//	scalar and array expansion
//	scalar expansion

  init_local2(a, b);

		for (int i = 0; i < LEN-1; i++){
			a[i+1] = b[i] + c[i];
			b[i]   = c[i] * e[i];
			d[i]   = a[i] * e[i];
		}
  print_local3(a, b, d);
	return 0;
}

