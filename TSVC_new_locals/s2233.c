#include "globals.h"

int s2233()
{

//	loop interchange
//	interchanging with one of two inner loops

  TYPE local_aa[LEN2][LEN2];
  TYPE local_bb[LEN2][LEN2];
  TYPE local_cc[LEN2][LEN2];
  init_local2D3(LEN2, local_aa, local_bb, local_cc);
		for (int i = 1; i < LEN2; i++) {
			for (int j = 1; j < LEN2; j++) {
				local_aa[j][i] = local_aa[j-1][i] + local_cc[j][i];
			}
			for (int j = 1; j < LEN2; j++) {
				local_bb[i][j] = local_bb[i-1][j] + local_cc[i][j];
			}
		}
  print_local2D2(LEN2, local_aa, local_bb);
	return 0;
}

