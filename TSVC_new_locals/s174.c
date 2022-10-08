#include "globals.h"

int s174(int M)
{

//	symbolics
//	loop with subscript that may seem ambiguous

    TYPE local_a[LEN];
    init_local1(local_a);
		for (int i = 0; i < M; i++) {
			local_a[i+M] = local_a[i] + b[i];
		}
    print_local1(local_a);
	return 0;
}
