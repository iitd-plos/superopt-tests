#include "globals.h"

int s122(int n1, int n3)
{

//	induction variable recognition
//	variable lower and upper bound, and stride
//	reverse data access and jump in data access

  TYPE local_a[LEN];
	int j, k;
		j = 1;
		k = 0;
		for (int i = n1-1; i < LEN; i += n3) {
			k += j;
			local_a[i] += b[LEN - k];
		}
  print_local1(local_a);
	return 0;
}

