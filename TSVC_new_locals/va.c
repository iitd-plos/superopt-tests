#include "globals.h"

int va()
{

//	control loops
//	vector assignment

  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);
		for (int i = 0; i < LEN; i++) {
			local_a[i] = local_b[i];
		}
    print_loca1(local_a);
	return 0;
}

