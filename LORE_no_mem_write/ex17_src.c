#include "globals_srcdst.h"

//remainder loop  fusion
//Sum
int ex17(int n)
{

  int sum1 = 0;
  int sum2 = 0;
	for (int i = 0; i < n; i++) {
		sum1 += a[i];
	}
	for (int i = 0; i < n; i++) {
		sum2 += b[i];
	}
	return sum1 + sum2;
}
