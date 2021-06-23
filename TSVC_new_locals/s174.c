#include "globals.h"

int s174(int M)
{

//	symbolics
//	loop with subscript that may seem ambiguous

    TYPE local_a[LEN], local_b[LEN];
    init_local2(local_a, local_b);
		for (int i = 0; i < M; i++) {
			local_a[i+M] = local_a[i] + local_b[i];
		}
    print_local1(local_a);
	return 0;
}
