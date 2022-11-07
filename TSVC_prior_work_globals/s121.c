#include "globals.h"

extern TYPE a[LEN];
int s121()
{

//	induction variable recognition
//	loop with possible ambiguity because of scalar store
    int j;

		for (int i = 0; i < LEN-1; i++) {
			j = i + 1;
			a[i] = a[j] + b[i];
		}
  print_local1(a);
	return 0;
}

