#include "globals_srcdst.h"

// 1D-Sum
// loop peeling
int ex14()
{
  int sum = 0;
	for (int j = 0; j < LEN ; j++) {
    if(j < 3)
      sum += 2*b[j];
    else 
		  sum += b[j];
	}
	return sum;
}
