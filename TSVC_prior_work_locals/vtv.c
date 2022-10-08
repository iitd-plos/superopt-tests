#include "globals.h"

int vtv()
{

//	control loops
//	vector times vector

  TYPE local_a[LEN];
  init_local1(local_a);
		for (int i = 0; i < LEN; i++) {
			local_a[i] *= b[i];
		}
  print_local1(local_a);
	return 0;
}

