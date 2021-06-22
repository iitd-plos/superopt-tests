#include "globals.h"

int vdotr()
{

//	control loops
//	vector dot product reduction

  TYPE local_a[LEN], local_b[LEN];
  init_local2(local_a, local_b);
	TYPE dot;
		dot = 0.;
		for (int i = 0; i < LEN; i++) {
			dot += local_a[i] * local_b[i];
		}
	temp = dot;
	return 0;
}

