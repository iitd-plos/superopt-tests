#include "globals.h"

int vif()
{

//	control loops
//	vector if

  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);
		for (int i = 0; i < LEN; i++) {
			if (local_b[i] > (TYPE)0.) {
				local_a[i] = local_b[i];
			}
		}
    print_local1(local_a);
	return 0;
}
