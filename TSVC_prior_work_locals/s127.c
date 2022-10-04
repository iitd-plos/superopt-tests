#include "globals.h"

int s127()
{

//	induction variable recognition
//	induction variable with multiple increments

  TYPE local_a[LEN];
  
	int j;
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			j++;
			local_a[j] = b[i] + c[i] * d[i];
			j++;
			local_a[j] = b[i] + c[i] * e[i];
		}
  print_local1(local_a);
	return 0;
}
