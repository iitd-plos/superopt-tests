#include "globals.h"

int s293()
{

//	loop peeling
//	a(i)=a(0) with actual dependence cycle, loop is vectorizable

    TYPE local_a[LEN];
    init_local1(local_a);
		for (int i = 0; i < LEN; i++) {
			local_a[i] = local_a[0];
		}
    print_local1(local_a);
	return 0;
}
