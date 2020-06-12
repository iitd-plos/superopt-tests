#include"eqchecker_helper.h"
int x,*p=&x;

int main()
{
  int i=0;
  x=1;
  p[i]=2;
  if (x != 2)
    Mymyabort ();
  exit (0);
}
