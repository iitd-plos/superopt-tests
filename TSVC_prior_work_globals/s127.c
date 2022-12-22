#include "globals.h"

  extern TYPE a[LEN];
int s127()
{

//	induction variable recognition
//	induction variable with multiple increments

  
	int j;
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			j++;
			a[j] = b[i] + c[i] * d[i];
			j++;
			a[j] = b[i] + c[i] * e[i];
		}
  print_local1(a);
	return 0;
}
