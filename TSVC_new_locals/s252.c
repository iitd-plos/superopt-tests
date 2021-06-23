#include "globals.h"

int s252()
{

//	scalar and array expansion
//	loop with ambiguous scalar temporary

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN];
  init_local2(local_b, local_c);
	TYPE t, s;
		t = (TYPE) 0.;
		for (int i = 0; i < LEN; i++) {
			s = local_b[i] * local_c[i];
			local_a[i] = s + t;
			t = s;
		}
    print_local1(local_a);
	return 0;
}

