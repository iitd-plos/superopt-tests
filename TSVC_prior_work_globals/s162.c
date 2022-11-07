#include "globals.h"

  extern TYPE a[LEN];
int s162(int k)
{
//	control flow
//	deriving assertions

  init_local1(a);

		if (k > 0) {
			// OOB for k > 1?
			for (int i = 0; i < LEN-1; i++) {
				a[i] = a[i + k] + b[i] * c[i];
			}
		}
  print_local1(a);
	return 0;
}

