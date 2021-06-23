#include "globals.h"

int s311()
{

//	reductions
//	sum reduction

    TYPE local_a[LEN];
    init_local1(local_a);
	TYPE sum;
		sum = (TYPE)0.;
		for (int i = 0; i < LEN; i++) {
			sum += local_a[i];
		}
		temp = sum;
	return 0;
}
