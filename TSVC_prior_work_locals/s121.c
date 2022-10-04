#include "globals.h"

int s121()
{

//	induction variable recognition
//	loop with possible ambiguity because of scalar store
    int j;
  TYPE local_a[LEN];

		for (int i = 0; i < LEN-1; i++) {
			j = i + 1;
			local_a[i] = local_a[j] + b[i];
		}
  print_local1(local_a);
	return 0;
}

