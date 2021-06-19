#include "globals.h"

int s125()
{

//	induction variable recognition
//	induction variable in two loops; collapsing possible

  TYPE local_aa[LEN2][LEN2], local_bb[LEN2][LEN2];
  TYPE local_cc[LEN2][LEN2];
  init_local1(local_aa);
  init_local1(local_bb);
  init_local1(local_cc);
  TYPE local_array[LEN2*LEN2];
	int k;
		k = -1;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				k++;
				local_array[k] = local_aa[i][j] + local_bb[i][j] * local_cc[i][j];
			}
		}
  print_local1(local_array);
	return 0;
}
