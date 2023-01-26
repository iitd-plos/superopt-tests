#include "globals.h"

int s2712()
{

//	control flow
//	if to elemental min

  TYPE local_a[LEN];
  init_local1(local_a);
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] > b[i]) {
				local_a[i] += b[i] * c[i];
			}
		}
  print_local1(local_a);
	return 0;
}

