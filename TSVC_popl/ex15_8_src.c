#include "globals.h"

//loop unswitching, distribution 1D loop
////8 uf
int ex15_8()
{

  TYPE local_a[LEN3], local_b[LEN3], local_c[LEN3];
  init_local2(local_a, local_b);
	int mid = (LEN3/4) + 1;
		for (int i = 0; i < LEN3; i++) {
			if (i < mid) 
			  local_c[i] = local_b[2*i];
			if (i >= mid) 
				local_c[i] = local_a[i];
		}
	return local_c[LEN3-1];
}
