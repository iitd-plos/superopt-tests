#include "globals.h"

  extern TYPE a[LEN];
int vtv()
{

//	control loops
//	vector times vector

  init_local1(a);
		for (int i = 0; i < LEN; i++) {
			a[i] *= b[i];
		}
  print_local1(a);
	return 0;
}

