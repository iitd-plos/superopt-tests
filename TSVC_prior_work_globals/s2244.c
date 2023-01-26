#include "globals.h"

  extern TYPE a[LEN];
int s2244()
{

//	node splitting
//	cycle with ture and anti dependency

		for (int i = 0; i < LEN-1; i++) {
			a[i+1] = b[i] + e[i];
			a[i] = b[i] + c[i];
		}
  print_local1(a);
	return 0;
}

