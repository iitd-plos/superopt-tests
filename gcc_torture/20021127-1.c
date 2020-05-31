#include"eqchecker_helper.h"
/* { dg-options "-std=c99" } */

long long a = -1;
long long llabs (long long);
void Mymyabort (void);
int
main()
{
  if (llabs (a) != 1)
    Mymyabort ();
  return 0;
}
long long llabs (long long b)
{
	Mymyabort ();
}
