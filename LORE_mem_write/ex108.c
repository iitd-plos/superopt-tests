#include "globals.h"

//2-way branch 1D loop
//MW
void ex108 ()
{
  int i;
  for (i = 0; i < LEN; i++)
    b[i] = a[i] < 0 ? x : y;
}
