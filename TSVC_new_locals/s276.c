#include "globals.h"

int s276()
{

//	control flow
//	if test using loop index

  TYPE local_a[LEN];
  init_local1(local_a);
	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i+1 < mid) {
				local_a[i] += b[i] * c[i];
			} else {
				local_a[i] += b[i] * d[i];
			}
		}
  print_local1(local_a);
	return 0;
}

