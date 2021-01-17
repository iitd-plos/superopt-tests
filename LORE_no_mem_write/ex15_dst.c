#include "globals_srcdst.h"

//loop unswitching, distributiona 1D loop
//Sum
int ex15()
{

//	control flow
//	if test using loop index
  int sum = 0;
  int len = 16384;
	int mid = (len/2);
		for (int i = 0; i < mid; i++) {
				sum += b[2*i];
    }
		for (int i = mid; i < len; i++) {
				sum += c[i];
		}
	return sum;
}
