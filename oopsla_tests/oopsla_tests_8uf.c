
#define LEN 32000
#define LEN1 3200
#define LEN2 1024
#define LEN3 256

#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <sys/param.h>
#include <sys/times.h>
#include <sys/types.h>
#include <time.h>
#include <malloc.h>
#include <string.h>
#include <assert.h>
#include "eqchecker_helper.h"

#define TYPE int
__attribute__((aligned(16))) TYPE a[LEN],b[LEN],c[LEN],d[LEN],e[LEN],
                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],dd[LEN2][LEN2],tmp[LEN2][LEN2], aaa[LEN3][LEN3][LEN3], bbb[LEN3][LEN3][LEN3];

//sum2d
TYPE ex2(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
    #pragma GCC unroll 2
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
	return ret;
}

//sum2d-1d
TYPE ex3(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
    #pragma GCC unroll 2
	  for (int j = 0; j < LEN2; j++)
		 ret += aa[i][j];

  #pragma GCC unroll 2
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	return ret;
}

//sum2d-1d-imperfect
TYPE ex4(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++) {
     #pragma GCC unroll 2
	   for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
		ret += a[i];
  }
	return ret;
}

//sum1d-2d
TYPE ex5(){
	TYPE ret = 0.;
  #pragma GCC unroll 2
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	for (int i = 0; i < LEN2; i++)
    #pragma GCC unroll 2
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
	return ret;
}

//sum3d
TYPE ex7(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN3; i++)
	  for (int j = 0; j < LEN3; j++)
      #pragma GCC unroll 2
	    for (int k = 0; k < LEN3; k++)
		    ret += aaa[i][j][k];
	return ret;
}

//MW-3d
TYPE ex107(){
	for (int i = 0; i < LEN3; i++)
	  for (int j = 0; j < LEN3; j++)
      #pragma GCC unroll 2
	    for (int k = 0; k < LEN3; k++)
		    bbb[i][j][k] = aaa[i][j][k];
	return 0;
}

int ex109()
{

//	non-logical if's
//	arithmetic if

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

int main(){

	return 0;
}

