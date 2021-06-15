#include "globals.h"

int s000()
{

//	linear dependence testing
//	no dependence - vectorizable
  TYPE local_X[LEN];
  init_local1(local_X);
		for (int i = 0; i < lll; i++) {
			local_X[i] = Y[i] + val;
		}
  print_local1(local_X);
	return 0;
}


