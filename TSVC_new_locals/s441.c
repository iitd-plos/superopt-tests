#include "globals.h"

int s441()
 {
 
 //	non-logical if's
 //	arithmetic if
 
  TYPE local_a[LEN];
  init_local1(local_a);
 		for (int i = 0; i < LEN; i++) {
 			if (d[i] < (TYPE)0.) {
 				local_a[i] += b[i] * c[i];
 			} else if (d[i] == (TYPE)0.) {
 				local_a[i] += b[i] * b[i];
 			} else {
 				local_a[i] += c[i] * c[i];
 			}
 		}
  print_local1(local_a);
 	return 0;
 }

