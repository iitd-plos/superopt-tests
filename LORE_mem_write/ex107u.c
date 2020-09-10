#include "globals.h"

//3-way branch 1D loop
//MW
int ex107()
{

    #pragma GCC unroll 2
    for (int i = 0; i < LEN; i++) {
      if (d[i] < (TYPE)0.) {
        a[i] += b[i] * c[i];
      } else if (d[i] == (TYPE)0.) {
        a[i] += b[i] * b[i];
      } else {
        a[i] += c[i] * c[i];
      }   
    }   
  return 0;
}
