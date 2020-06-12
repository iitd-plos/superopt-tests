#include"eqchecker_helper.h"
int __attribute__((noinline))
foo(int i)
{
  int *p = __builtin_malloc (4 * sizeof(int));
  *p = 0;
  p[i] = 1;
  return *p;
}
extern void Mymyabort (void);
int main()
{
  if (foo(0) != 1)
    Mymyabort ();
  return 0;
}
