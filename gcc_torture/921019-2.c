#include"eqchecker_helper.h"
main()
{
  double x,y=0.5;
  x=y/0.2;
  if(x!=x)
    Mymyabort();
  exit(0);
}
