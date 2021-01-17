#include "globals_srcdst.h"

// 1D-MW
// loop peeling
int ex109()
{

  b[0] = 0;
  b[1] = 0;
  b[2] = 0;
	for (int j = 3; j < LEN ; j++) {
		  b[j] = a[j];
	}
	return 0;
}
