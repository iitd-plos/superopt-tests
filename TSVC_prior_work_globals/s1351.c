#include "globals.h"

  extern TYPE a[LEN];
int s1351()
{

//	induction pointer recognition

		
    TYPE* __restrict__ A = a;
		TYPE* __restrict__ B = b;
		TYPE* __restrict__ C = c;
		for (int i = 0; i < LEN; i++) {
			*A = *B+*C;
			A++;
			B++;
			C++;
		}
  print_local1(a);
	return 0;
}
