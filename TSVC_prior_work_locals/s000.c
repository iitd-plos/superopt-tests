#include "globals.h"

int s000()
{

//	linear dependence testing
//	no dependence - vectorizable
  TYPE local_X[LEN];
		for (int i = 0; i < LEN; i++) {
			local_X[i] = Y[i] + val;
		}
  print_local1(local_X); // side-effect
	return 0;
}


