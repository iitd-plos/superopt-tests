#include"eqchecker_helper.h"
/* { dg-require-alias "" } */
int a[10]={};
extern int b[10] __attribute__ ((alias("a")));
int off;
main()
{
  b[off]=1;
  a[off]=2;
  if (b[off]!=2)
   Mymyabort ();
  return 0;
}