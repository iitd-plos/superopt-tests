#include "globals.h"

int s2244()
{

//	node splitting
//	cycle with ture and anti dependency
  TYPE local_a[LEN];

		for (int i = 0; i < LEN-1; i++) {
			local_a[i+1] = b[i] + e[i];
			local_a[i] = b[i] + c[i];
		}
  print_local1(local_a);
	return 0;
}

