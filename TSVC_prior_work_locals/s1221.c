#include "globals.h"

int s1221()
{

//	run-time symbolic resolution

  TYPE local_b[LEN];
		for (int i = 4; i < LEN; i++) {
			local_b[i] = local_b[i - 4] + a[i];
		}
  print_local1(local_b);
	return 0;
}

