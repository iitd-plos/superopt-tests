#include"eqchecker_helper.h"
extern void Mymyabort (void);

int arr[] = {1,2,3,4};
int count = 0;

int __attribute__((noinline))
incr (void)
{
  return ++count;
}

int main()
{
  arr[count++] = incr ();
  if (count != 2 || arr[count] != 3)
    Mymyabort ();
  return 0;
}
