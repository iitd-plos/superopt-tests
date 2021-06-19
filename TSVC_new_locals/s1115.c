#include "globals.h"

int s1115()
{

//	linear dependence testing
//	triangular saxpy loop
  TYPE local_aa[LEN2][LEN2], local_bb[LEN2][LEN2];
  TYPE local_cc[LEN2][LEN2];
  init_local1(local_aa);
  init_local1(local_bb);
  init_local1(local_cc);
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				local_aa[i][j] = local_aa[i][j]*local_cc[j][i] + local_bb[i][j];
			}
		}
  print_local1(local_aa);
	return 0;
}
