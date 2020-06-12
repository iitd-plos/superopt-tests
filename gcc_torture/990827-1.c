#include"eqchecker_helper.h"
unsigned test(unsigned one , unsigned  bit)
{
    unsigned val=  bit & 1;
    unsigned zero= one >> 1;

    val++;
    return zero + ( val>> 1 );
}

int main()
{
  if (test (1,0) != 0)
    Mymyabort ();
  if (test (1,1) != 1)
    Mymyabort ();
  if (test (1,65535) != 1)
    Mymyabort ();
  exit (0);

  return 0;
}
