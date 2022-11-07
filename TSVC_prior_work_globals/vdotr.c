#include "globals.h"

  extern TYPE a[LEN], b[LEN];
int vdotr()
{

//	control loops
//	vector dot product reduction

  init_local2(a, b);
	TYPE dot;
		dot = 0.;
		for (int i = 0; i < LEN; i++) {
			dot += a[i] * b[i];
		}
	temp = dot;
	return 0;
}

