#include "globals_srcdst.h"

//loop unswitching, distribution 1D loop
// MW
int ex1010()
{

//	control flow
//	if test using loop index

	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i < mid) 
				a[i] += b[i];
			if (i >= mid) 
				a[i] += c[i];
		}
	return 0;
}
