#include "globals.h"

//MW-3d
TYPE ex106(){
	for (int i = 0; i < LEN3; i++)
	  for (int j = 0; j < LEN3; j++)
      #pragma GCC unroll 2
	    for (int k = 0; k < LEN3; k++)
		    bbb[i][j][k] = aaa[i][j][k];
	return 0;
}
