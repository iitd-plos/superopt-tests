#include "globals.h"

int s114()
{

//	linear dependence testing
//	transpose vectorization
//	Jump in data access - not vectorizable
  TYPE local_aa[LEN2][LEN2];
  init_local2D1(LEN2, local_aa);

		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < i; j++) {
				local_aa[i][j] = local_aa[j][i] + bb[i][j];
			}
		}
  print_local2D1(LEN2, local_aa);
	return 0;
}
