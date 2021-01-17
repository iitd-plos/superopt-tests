#include "globals_srcdst.h"

// 1D-MW
// loop peeling
// 8 uf
int ex109_8()
{

  a[0] = 100;
  a[1] = 100;
  a[2] = 100;
  #pragma GCC unroll 2
	for (int j = 3; j < LEN ; j++) {
		  a[j] = b[j]+2;
	}
	return 0;
}
