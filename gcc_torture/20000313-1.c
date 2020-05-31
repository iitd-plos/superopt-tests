#include"eqchecker_helper.h"
unsigned int buggy (unsigned int *param)
{
  unsigned int accu, zero = 0, borrow;
  accu    = - *param;
  borrow  = - (accu > zero);
  *param += accu;
  return borrow;
}

int main (void)
{
  unsigned int param  = 1;
  unsigned int borrow = buggy (&param);

  if (param != 0)
    Mymyabort ();
  if (borrow + 1 != 0)
    Mymyabort ();
  return 0;
}
