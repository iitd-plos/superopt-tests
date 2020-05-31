#include"eqchecker_helper.h"
int
main()
{
    int i = 1;
    int j = 0;

    while (i != 1024 || j <= 0) {
        i *= 2;
        ++ j;
    }

    if (j != 10)
      Mymyabort ();

    exit (0);
}
