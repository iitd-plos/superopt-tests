#include "globals.h"

int s3111()
{

//	reductions
//	conditional sum reduction

    TYPE local_a[LEN];
    init_local1(local_a);
	TYPE sum;
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			if (local_a[i] > (TYPE)0.) {
				sum += local_a[i];
			}
		}
	temp = sum;
	return 0;
}

