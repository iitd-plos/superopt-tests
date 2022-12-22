#include "globals.h"

  extern TYPE a[LEN], b[LEN];
int s1251()
{

//	scalar and array expansion
//	scalar expansion

  init_local2(a, b);

	TYPE s;
		for (int i = 0; i < LEN; i++) {
			s = b[i] + c[i];
			b[i] = a[i] + d[i];
			a[i] = s*e[i];
		}
  print_local2(a, b);
	return 0;
}
