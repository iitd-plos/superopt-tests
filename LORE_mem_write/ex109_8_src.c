#include "globals_srcdst.h"

// 1D-MW
// loop peeling
// 8 uf
int ex109_8()
{

	for (int j = 0; j < LEN ; j++) {
    if(j < 3)
      a[j] = 100;
    else 
		  a[j] = b[j]+2;
	}
	return 0;
}
