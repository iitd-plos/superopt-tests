#include "globals.h"

int s124()
 {
 
 //	induction variable recognition
 //	induction variable under both sides of if (same value)
  TYPE local_a[LEN];
 
 	int j;
 		j = -1;
 		for (int i = 0; i < LEN; i++) {
 			if (b[i] > (TYPE)0.) {
 				j++;
 				local_a[j] = b[i] + d[i] * e[i];
 			} else {
 				j++;
 				local_a[j] = c[i] + d[i] * e[i];
 			}
 		}
  print_local1(local_a);
 	return 0;
 }
