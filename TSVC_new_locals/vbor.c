#include "globals.h"

int vbor()
{

//	control loops
//	basic operations rates, isolate arithmetic from memory traffic
//	all combinations of three, 59 flops for 6 loads and 1 store.

  TYPE local_a[LEN], local_b[LEN];
  TYPE local_c[LEN], local_d[LEN];
  TYPE local_e[LEN], local_x[LEN], local_aa[LEN2][LEN2];
  init_local5(local_x, local_b, local_c, local_d, local_e);
  init_local2D1(LEN2, local_aa);
	TYPE a1, b1, c1, d1, e1, f1;
		for (int i = 0; i < LEN2; i++) {
			a1 = local_a[i];
			b1 = local_b[i];
			c1 = local_c[i];
			d1 = local_d[i];
			e1 = local_e[i];
			f1 = local_aa[0][i];
			a1 = a1 * b1 * c1 + a1 * b1 * d1 + a1 * b1 * e1 + a1 * b1 * f1 +
				a1 * c1 * d1 + a1 * c1 * e1 + a1 * c1 * f1 + a1 * d1 * e1
				+ a1 * d1 * f1 + a1 * e1 * f1;
			b1 = b1 * c1 * d1 + b1 * c1 * e1 + b1 * c1 * f1 + b1 * d1 * e1 +
				b1 * d1 * f1 + b1 * e1 * f1;
			c1 = c1 * d1 * e1 + c1 * d1 * f1 + c1 * e1 * f1;
			d1 = d1 * e1 * f1;
			local_x[i] = a1 * b1 * c1 * d1;
		}
  int sum = 0;
	for (int i = 0; i < LEN; i++){
		sum += local_x[i];
	}
	temp = sum;
	return 0;
}

