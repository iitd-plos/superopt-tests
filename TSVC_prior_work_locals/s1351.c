#include "globals.h"

int s1351()
{

//	induction pointer recognition

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local1(local_b);
  init_local1(local_c);
		
    TYPE* __restrict__ A = local_a;
		TYPE* __restrict__ B = local_b;
		TYPE* __restrict__ C = local_c;
		for (int i = 0; i < LEN; i++) {
			*A = *B+*C;
			A++;
			B++;
			C++;
		}
  print_local1(local_a);
	return 0;
}
