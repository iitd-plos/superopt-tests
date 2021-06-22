#include "globals.h"

int vpvts()
{

//	control loops
//	vector plus vector times scalar
  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);

		for (int i = 0; i < LEN; i++) {
			local_a[i] += local_b[i] * s;
		}
  print_local1(local_a);
	return 0;
}


