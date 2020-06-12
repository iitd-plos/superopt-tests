#include"eqchecker_helper.h"
#include <stdarg.h>

void test (int x, ...)
{
    va_list ap;
    int i;
    va_start (ap, x);
    if (va_arg (ap, int) != 1)
	Mymyabort ();
    if (va_arg (ap, int) != 2)
	Mymyabort ();
    if (va_arg (ap, int) != 3)
	Mymyabort ();
    if (va_arg (ap, int) != 4)
	Mymyabort ();
}

double a = 40.0;

int main(int argc, char *argv[])
{
    test(0, 1, 2, 3, (int)(a / 10.0));
    exit (0);
}
