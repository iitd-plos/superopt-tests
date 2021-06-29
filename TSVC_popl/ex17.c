#include "globals.h"


//remainder loop  fusion
//Sum
int ex17(unsigned n)
{
  if(n == 0)
    return n;
  int local_a[n];
#pragma clang loop unroll_count(8)
	for (int i = 0; i < n; i++) {
		local_a[i] = i;
	}
  return local_a[3] * local_a[n-3];
}
