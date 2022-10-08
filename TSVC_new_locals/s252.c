#include "globals.h"

int s252()
{

//	scalar and array expansion
//	loop with ambiguous scalar temporary

  TYPE local_a[LEN];
	TYPE t, s;
		t = (TYPE) 0.;
		for (int i = 0; i < LEN; i++) {
			s = b[i] * c[i];
			local_a[i] = s + t;
			t = s;
		}
    print_local1(local_a);
	return 0;
}

