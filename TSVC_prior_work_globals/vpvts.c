#include "globals.h"

  extern TYPE a[LEN];
int vpvts()
{

//	control loops
//	vector plus vector times scalar
  init_local1(a);

		for (int i = 0; i < LEN; i++) {
			a[i] += b[i] * s;
		}
  print_local1(a);
	return 0;
}


