#include "globals_srcdst.h"

//loop unswitching, distribution 1D loop
// MW
int ex1010()
{

//	control flow
//	if test using loop index

	int mid = (LEN/2);
		for (int i = 0; i < mid; i++) {
				a[i] += b[i];
    }
		for (int i = mid; i < LEN; i++) {
				a[i] += c[i];
		}
	return 0;
}
