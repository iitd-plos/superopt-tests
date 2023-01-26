#include "globals.h"

  extern TYPE a[LEN];
int s122(int n1, int n3)
{

//	induction variable recognition
//	variable lower and upper bound, and stride
//	reverse data access and jump in data access
	int j, k;
		j = 1;
		k = 0;
		init_local1(a);
		for (int i = n1-1; i < LEN; i += n3) {
			k += j;
			a[i] += b[LEN - k];
		}
  print_local1(a);
	return 0;
}

