#include "globals.h"

int s171(int inc)
{

//	symbolics
//	symbolic dependence tests
    TYPE local_a[LEN];
    init_local1(local_a);
		for (int i = 0; i < LEN; i++) {
			local_a[i * inc] += b[i];
		}
    print_local1(local_a);
	return 0;
}
