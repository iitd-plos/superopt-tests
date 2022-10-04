#include "globals.h"

int s1279()
{

//	control flow
//	vector if/gotos
  TYPE local_c[LEN];
  init_local1(local_c);
		for (int i = 0; i < LEN; i++) {
			if (a[i] < (TYPE)0.) {
				if (b[i] > a[i]) {
					local_c[i] += d[i] * e[i];
				}
			}
		}
    print_local1(local_c);
	return 0;
}
