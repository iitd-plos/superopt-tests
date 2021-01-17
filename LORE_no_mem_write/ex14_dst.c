#include "globals_srcdst.h"

// 1D-Sum
// loop peeling
int ex14()
{
  int sum = 0;
  sum += 2*b[0];
  sum += 2*b[1];
  sum += 2*b[2];
	for (int j = 3; j < LEN ; j++) {
		  sum += b[j];
	}
	return sum;
}
