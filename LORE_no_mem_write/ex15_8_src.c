#include "globals_srcdst.h"

//loop unswitching, distribution 1D loop
//Sum
////8 uf
int ex15_8()
{

//	control flow
//	if test using loop index
  int sum = 0;
  int len = 16384;
	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i < mid) 
				sum += c[a[i]];
			if (i >= mid) 
				sum += b[i];
		}
	return sum;
}
