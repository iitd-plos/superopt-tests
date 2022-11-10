#include "globals.h"

  extern TYPE b[LEN];
int s1221()
{
//	run-time symbolic resolution
  init_local1(b);
		for (int i = 4; i < LEN; i++) {
			b[i] = b[i - 4] + a[i];
		}
  print_local1(b);
	return 0;
}

