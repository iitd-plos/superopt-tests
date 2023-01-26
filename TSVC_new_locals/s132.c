#include "globals.h"

int s132()
{
//	global data flow analysis
//	loop with multiple dimension ambiguous subscripts

  TYPE local_aa[LEN2][LEN2];
  init_local2D1(LEN2, local_aa);
	int m = 0;
	int j = m;
	int k = m+1;
		for (int i= 1; i < LEN2; i++) {
			local_aa[j][i] = local_aa[k][i-1] + b[i] * c[1];
		}
  print_local2D1(LEN2, local_aa);
	return 0;
}
