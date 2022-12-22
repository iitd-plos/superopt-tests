#include "globals.h"

int s1351()
{

//	induction pointer recognition

  TYPE local_a[LEN];
		
    TYPE* __restrict__ A = local_a;
		TYPE* __restrict__ B = b;
		TYPE* __restrict__ C = c;
		for (int i = 0; i < LEN; i++) {
			*A = *B+*C;
			A++;
			B++;
			C++;
		}
  print_local1(local_a);
	return 0;
}
