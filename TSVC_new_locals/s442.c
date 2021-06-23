#include "globals.h"

int s442()
{

//	non-logical if's
//	computed goto

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN], local_indx[LEN];
  init_local6(local_a, local_b, local_c, local_d, local_e, local_indx);
		for (int i = 0; i < LEN; i++) {
			switch (local_indx[i]) {
				case 1:  goto L15;
				case 2:  goto L20;
				case 3:  goto L30;
				case 4:  goto L40;
			}
L15:
			local_a[i] += local_b[i] * local_b[i];
			goto L50;
L20:
			local_a[i] += local_c[i] * local_c[i];
			goto L50;
L30:
			local_a[i] += local_d[i] * local_d[i];
			goto L50;
L40:
			local_a[i] += local_e[i] * local_e[i];
L50:
			;
		}
  print_local1(local_a);
	return 0;
}

