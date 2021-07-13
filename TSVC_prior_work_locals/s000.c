#include "globals.h"

int s000()
{

//	linear dependence testing
//	no dependence - vectorizable
  TYPE local_X[LEN], local_Y[LEN];
  init_local1(local_Y);
		for (int i = 0; i < lll; i++) {
			local_X[i] = local_Y[i] + val;
		}
  print_local1(local_X);
	return 0;
}


