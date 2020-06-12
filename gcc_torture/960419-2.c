#include"eqchecker_helper.h"
#define SIZE 8

main()
{
  int a[SIZE] = {1};
  int i;

  for (i = 1; i < SIZE; i++)
    if (a[i] != 0)
      Mymyabort();

  exit (0);
}
