#include"eqchecker_helper.h"
extern void exit (int);
extern void Mymyabort ();

void test(int x, int y)
{
	int c;

	if (x == 1) Mymyabort();
	if (y == 1) Mymyabort();

	c = x / y;

	if (c != 1) Mymyabort();
}

int main()
{
	test(2, 2);
	exit (0);
}
