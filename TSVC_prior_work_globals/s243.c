#include "globals.h"

  extern TYPE a[LEN], b[LEN];
int s243()
{

//	node splitting
//	false dependence cycle breaking

  init_local2(a, b);

		for (int i = 0; i < LEN-1; i++) {
			a[i] = b[i] + c[i  ] * d[i];
			b[i] = a[i] + d[i  ] * e[i];
			a[i] = b[i] + a[i+1] * d[i];
		}
  print_local2(a, b);
	return 0;
}

