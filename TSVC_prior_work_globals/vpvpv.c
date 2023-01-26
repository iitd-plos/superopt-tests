#include "globals.h"

  extern TYPE a[LEN];
int vpvpv()
{

//	control loops
//	vector plus vector plus vector
  init_local1(a);

		for (int i = 0; i < LEN; i++) {
			a[i] += b[i] + c[i];
		}
  print_local1(a);
	return 0;
}

