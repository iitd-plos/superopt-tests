#include "globals.h"

int vpvts()
{

//	control loops
//	vector plus vector times scalar
  TYPE local_a[LEN];
  init_local1(local_a);

		for (int i = 0; i < LEN; i++) {
			local_a[i] += b[i] * s;
		}
  print_local1(local_a);
	return 0;
}


