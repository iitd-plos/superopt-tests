#include "globals.h"

int s254()
{

  //	scalar and array expansion
  //	carry around variable

  TYPE local_a[LEN];
	TYPE x;
	x = b[LEN-1];
	for (int i = 0; i < LEN; i++) {
		local_a[i] = (b[i] + x) / 2;
		//local_a[i] = (b[i] + x) * (TYPE).5; // setting to 0 essentially
//		a[i] = (b[i] + x) / 2;
		x = b[i];
	}
  print_local1(local_a);
	return 0;
}

