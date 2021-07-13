#include "globals.h"

 int s443()
 {
 
 //	non-logical if's
 //	arithmetic if
 
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  init_local4(local_a, local_b, local_c, local_d);
 		for (int i = 0; i < LEN; i++) {
 			if (local_d[i] <= (TYPE)0.) {
 				goto L20;
 			} else {
 				goto L30;
 			}
 L20:
 			local_a[i] += local_b[i] * local_c[i];
 			goto L50;
 L30:
 			local_a[i] += local_b[i] * local_b[i];
 L50:
 			;
 		}
  print_local1(local_a);
 	return 0;
 }

