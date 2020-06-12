#include"eqchecker_helper.h"
typedef int new_int __attribute__ ((aligned(16)));
struct S { int x; };
 
int main()
{
  if (sizeof(struct S) != sizeof(int))
    Mymyabort ();
  return 0;
}
