#include "globals.h"

int s453()
{

//	induction varibale recognition
  
  TYPE local_a[LEN], local_b[LEN];
  init_local1(local_b);

		for (int i = 0; i < LEN; i++) {
			local_a[i] = val_s * local_b[i];
		}
  print_local1(local_a);
	return 0;
}

