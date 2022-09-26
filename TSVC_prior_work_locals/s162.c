#include "globals.h"

int s162(int k)
{
//	control flow
//	deriving assertions

  TYPE local_a[LEN];
  init_local1(local_a);

		if (k > 0) {
			for (int i = 0; i < LEN-1; i++) {
				local_a[i] = local_a[i + k] + b[i] * c[i];
			}
		}
  print_local1(local_a);
	return 0;
}

