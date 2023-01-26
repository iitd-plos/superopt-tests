#include "globals.h"

extern TYPE X[LEN];

int s000()
{

//	linear dependence testing
//	no dependence - vectorizable
		for (int i = 0; i < LEN; i++) {
			X[i] = Y[i] + val;
		}
  print_local1(X); // side-effect
	return 0;
}


