#include "globals.h"

 int s443()
 {
 
 //	non-logical if's
 //	arithmetic if
 
  TYPE local_a[LEN];
  init_local1(local_a);
 		for (int i = 0; i < LEN; i++) {
 			if (d[i] <= (TYPE)0.) {
 				goto L20;
 			} else {
 				goto L30;
 			}
 L20:
 			local_a[i] += b[i] * c[i];
 			goto L50;
 L30:
 			local_a[i] += b[i] * b[i];
 L50:
 			;
 		}
  print_local1(local_a);
 	return 0;
 }

