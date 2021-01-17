#include "globals_srcdst.h"

//loop unswitching, distributiona 1D loop
//Sum
//8 uf
int ex15_8()
{

//	control flow
//	if test using loop index
  int sum = 0;
	int mid = (LEN/2);
		for (int i = 0; i < mid; i++) {
				sum += c[a[i]];
    }
  #pragma GCC unroll 2
		for (int i = mid; i < LEN; i++) {
				sum += b[i];
		}
	return sum;
}
