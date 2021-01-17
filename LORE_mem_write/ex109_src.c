#include "globals_srcdst.h"

// 1D-MW
// loop peeling
int ex109()
{

	for (int j = 0; j < LEN ; j++) {
    if(j < 3)
      b[j] = 0;
    else 
		  b[j] = a[j];
	}
	return 0;
}
