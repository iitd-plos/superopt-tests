#include "globals.h"

int s1119()
{

//	linear dependence testing
//	no dependence - vectorizable
  TYPE local_aa[LEN2][LEN2], local_bb[LEN2][LEN2];
  init_local2D(LEN2, local_aa);
  init_local2D(LEN2, local_bb);

		for (int i = 1; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				local_aa[i][j] = local_aa[i-1][j] + local_bb[i][j];
			}
		}
  print_local2D(LEN2, local_aa);
	return 0;
}
