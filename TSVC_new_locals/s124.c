#include "globals.h"

int s124()
 {
 
 //	induction variable recognition
 //	induction variable under both sides of if (same value)
  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN];
  init_local4(local_b, local_c, local_d, local_e);
 
 	int j;
 		j = -1;
 		for (int i = 0; i < LEN; i++) {
 			if (local_b[i] > (TYPE)0.) {
 				j++;
 				local_a[j] = local_b[i] + local_d[i] * local_e[i];
 			} else {
 				j++;
 				local_a[j] = local_c[i] + local_d[i] * local_e[i];
 			}
 		}
  print_local1(local_a);
 	return 0;
 }
