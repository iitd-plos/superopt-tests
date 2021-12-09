#define LEN 32000
__attribute__ ((aligned(16))) int X[LEN],Y[LEN];
int val;

int s000()
{

//	linear dependence testing
//	no dependence - vectorizable
	for (int i = 0; i < LEN; i++) {
		X[i] = Y[i] + val;
	}
	return 0;
}


