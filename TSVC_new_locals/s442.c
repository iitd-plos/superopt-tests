#include "globals.h"

int s442()
{

//	non-logical if's
//	computed goto

  TYPE local_a[LEN];
  init_local1(local_a);
		for (int i = 0; i < LEN; i++) {
			switch (indx[i]) {
				case 1:  goto L15;
				case 2:  goto L20;
				case 3:  goto L30;
				case 4:  goto L40;
			}
L15:
			local_a[i] += b[i] * b[i];
			goto L50;
L20:
			local_a[i] += c[i] * c[i];
			goto L50;
L30:
			local_a[i] += d[i] * d[i];
			goto L50;
L40:
			local_a[i] += e[i] * e[i];
L50:
			;
		}
  print_local1(local_a);
	return 0;
}

