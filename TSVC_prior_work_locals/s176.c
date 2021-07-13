#include "globals.h"

int s176()
{

//	symbolics
//	convolution
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local3(local_a, local_b, local_c);
	int m = LEN/2;
		for (int j = 0; j < (LEN/2); j++) {
			for (int i = 0; i < m; i++) {
				local_a[i] += local_b[i+m-j-1] * local_c[j];
			}
//			DBG(__LINE__);
		}
  print_local1(local_a);
	return 0;
}

