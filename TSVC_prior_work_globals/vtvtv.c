#include "globals.h"

  extern TYPE a[LEN];
int vtvtv()
{

//	control loops
//	vector times vector times vector

  init_local1(a);
		for (int i = 0; i < LEN; i++) {
			a[i] *= b[i] * c[i];
		}
  print_local1(a);
	return 0;
}

