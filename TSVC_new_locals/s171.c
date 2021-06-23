#include "globals.h"

int s171(int inc)
{

//	symbolics
//	symbolic dependence tests
    TYPE local_a[LEN], local_b[LEN];
    init_local2(local_a, local_b);
		for (int i = 0; i < LEN; i++) {
			local_a[i * inc] += local_b[i];
		}
    print_local1(local_a);
	return 0;
}
