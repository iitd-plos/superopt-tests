#include "globals.h"

int s2711()
{

//	control flow
//	semantic if removal

  TYPE local_a[LEN];
  init_local1(local_a);
		for (int i = 0; i < LEN; i++) {
			if (b[i] != (TYPE)0.0) {
				local_a[i] += b[i] * c[i];
			}
		}
    print_local1(local_a);
	return 0;
}

