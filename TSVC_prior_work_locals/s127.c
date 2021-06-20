#include "globals.h"

int s127()
{

//	induction variable recognition
//	induction variable with multiple increments

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  
  init_local1(local_b);
  init_local1(local_c);
  init_local1(local_d);
  init_local1(local_e);
	int j;
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			j++;
			local_a[j] = local_b[i] + local_c[i] * local_d[i];
			j++;
			local_a[j] = local_b[i] + local_d[i] * local_e[i];
		}
  print_local1(local_a);
	return 0;
}
