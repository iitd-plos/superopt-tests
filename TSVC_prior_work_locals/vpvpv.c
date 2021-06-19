#include "globals.h"

int vpvpv()
{

//	control loops
//	vector plus vector plus vector
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local1(local_a);
  init_local1(local_b);
  init_local1(local_c);

		for (int i = 0; i < LEN; i++) {
			local_a[i] += local_b[i] + local_c[i];
		}
  print_local1(local_a);
	return 0;
}

