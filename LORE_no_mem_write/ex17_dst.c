#include "globals_srcdst.h"


//remainder loop  fusion
//Sum
int ex17(int n)
{

  int sum1 = 0;
  int sum2 = 0;
  if( n < 4)
  {
    if(n >= 1) {  sum1 += a[0]; sum2 += b[0];}
    if(n >= 2) {  sum1 += a[1]; sum2 += b[1];}
    if(n == 3) {  sum1 += a[2]; sum2 += b[2];}
  }
  else
  {
  	for (int i = 0; i < n; i++) 
  		sum1 += a[i];
  	for (int i = 0; i < n; i++) {
  		sum2 += b[i];
  	}
  }
	return sum1 + sum2;
}
