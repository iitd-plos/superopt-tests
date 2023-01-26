#include "globals.h"

extern TYPE a[LEN];
int s1112()
{

//	linear dependence testing
//	loop reversal
		for (int i = LEN - 1; i >= 0; i--) {
			a[i] = b[i] + val;
		}
  print_local1(a);
	return 0;
}
