#include "globals.h"

int s162(int k)
{
//	control flow
//	deriving assertions

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local1(local_a);
  init_local1(local_b);
  init_local1(local_c);

		if (k > 0) {
			for (int i = 0; i < LEN-1; i++) {
				local_a[i] = local_a[i + k] + local_b[i] * local_c[i];
			}
		}
  print_local1(local_a);
	return 0;
}

