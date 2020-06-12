#include"eqchecker_helper.h"
void Mymyabort (void);

int j;

void bla (int *r)
{
  int *p, *q;

  p = q = r;
  if (!p)
    p = &j;
  
  if (p != q)
    j = 1;
}

int main (void)
{
  bla (0);
  if (!j)
    Mymyabort ();
  return 0;
}
