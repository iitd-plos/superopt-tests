#include"eqchecker_helper.h"
extern void Mymyabort ();

#define _ 2
#pragma push_macro("_")
#undef _
#define _ 1
#pragma pop_macro("_")

int main ()
{
  if (_ != 2)
    Mymyabort ();
  return 0;
}

