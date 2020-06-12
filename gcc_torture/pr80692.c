#include"eqchecker_helper.h"
/* { dg-require-effective-target dfp } */

int main () {
	_Decimal64 d64 = -0.DD;

	if (d64 != 0.DD)
		Mymyabort ();

	if (d64 != -0.DD)
		Mymyabort ();

	return 0;
}
