#include "globals.h"

int vpvtv()
{

//	control loops
//	vector plus vector times vector
  TYPE local_a[LEN];
  init_local1(local_a);

		for (int i = 0; i < LEN; i++) {
			local_a[i] += b[i] * c[i];
		}
  print_local1(local_a);
	return 0;
}


