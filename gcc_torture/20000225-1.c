#include"eqchecker_helper.h"
int main ()
{
    int nResult;
    int b=0;
    int i = -1;

    do
    {
     if (b!=0) {
       Mymyabort ();
       nResult=1;
     } else {
      nResult=0;
     }
     i++;
     b=(i+2)*4;
    } while (i < 0);
    exit (0);
}


