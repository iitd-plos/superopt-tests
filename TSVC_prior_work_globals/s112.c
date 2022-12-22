#include "globals.h"

extern TYPE a[LEN];
int s112()
{
//	linear dependence testing
//	loop reversal
  init_local1(a);
		for (int i = LEN - 2; i >= 0; i--) {
			a[i+1] = a[i] + b[i];
		}
  print_local1(a);
	return 0;
}
