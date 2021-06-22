#include "globals.h"

int vtvtv()
{

//	control loops
//	vector times vector times vector

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local3(local_a, local_b, local_c);
		for (int i = 0; i < LEN; i++) {
			local_a[i] = local_a[i] * local_b[i] * local_c[i];
		}
  print_local1(local_a);
	return 0;
}

