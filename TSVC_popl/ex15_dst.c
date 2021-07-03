#include "globals.h"

//loop unswitching, distributiona 1D loop
//4 uf
int ex15()
{

  TYPE local_a[LEN3], local_b[LEN3], local_c[LEN3];
  init_local2(local_a, local_b);
	int mid = (LEN3/4) + 1;
		for (int i = 0; i < mid; i++) {
				local_c[i] = local_b[2*i];
    }
		for (int i = mid; i < LEN3; i++) {
				local_c[i] = local_a[i];
		}
	return local_c[LEN3-1];
}
