#include "globals.h"

int s1115()
{

//	linear dependence testing
//	triangular saxpy loop
  TYPE local_aa[LEN2][LEN2];
  init_local2D1(LEN2, local_aa);
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				local_aa[i][j] = local_aa[i][j]*cc[j][i] + bb[i][j];
			}
		}
  print_local2D1(LEN2, local_aa);
	return 0;
}
