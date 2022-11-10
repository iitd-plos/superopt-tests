#include "globals.h"

  extern TYPE a[LEN];
int s173()
{
//	symbolics
//	expression in loop bounds and subscripts

  init_local1(a);
	
  int k = LEN/2;
		for (int i = 0; i < LEN/2; i++) {
			a[i+k] = a[i] + b[i];
		}
  print_local1(a);
	return 0;
}

