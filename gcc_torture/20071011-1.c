#include"eqchecker_helper.h"
extern void Mymyabort(void);
void foo(int *p)
{
  int x;
  int y;
  x = *p;
  *p = 0;
  y = *p;
  if (x != y)
    return;
  Mymyabort ();
}

int main()
{
  int a = 1;
  foo(&a);
  return 0;
}
