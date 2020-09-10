#include "globals_srcdst.h"

//loop unswitching, distribution 1D loop
//Sum
int ex15()
{

//	control flow
//	if test using loop index
  int sum = 0;
  int len = 16384;
	int mid = (len/2);
		for (int i = 0; i < len; i++) {
			if (i < mid) 
				sum += b[2*i];
			if (i >= mid) 
				sum += c[i];
		}
	return sum;
}
