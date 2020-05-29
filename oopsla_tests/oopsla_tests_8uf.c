
/*
 * This is an executable test containing a number of loops to measure
 * the performance of a compiler. Arrays' length is LEN by default
 * and if you want a different array length, you should replace every 
 * LEN by your desired number which must be a multiple of 40. If you 
 * want to increase the number of loop calls to have a longer run time
 * you have to manipulate the constant value ntimes. There is a dummy
 * function called in each loop to make all computations appear required.
 * The time to execute this function is included in the time measurement 
 * for the output but it is neglectable.
 *
 *  The output includes three columns:
 *	Loop:		The name of the loop
 *	Time(Sec): 	The time in seconds to run the loop
 *	Checksum:	The checksum calculated when the test has run
 *
 * In this version of the codelets arrays are static type.
 *
 * All functions/loops are taken from "TEST SUITE FOR VECTORIZING COMPILERS"
 * by David Callahan, Jack Dongarra and David Levine except those whose 
 * functions' name have 4 digits.
 */


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

//#include <builtins.h>


#define TYPE int

#define lll LEN


TYPE val = 1;

__attribute__ ((aligned(16))) TYPE X[lll],Y[lll],Z[lll],U[lll],V[lll];
TYPE array[LEN2*LEN2] __attribute__((aligned(16)));
TYPE x[LEN] __attribute__((aligned(16)));
TYPE temp;
__attribute__((aligned(16))) TYPE a[LEN],b[LEN],c[LEN],d[LEN],e[LEN],
                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],dd[LEN2][LEN2],tmp[LEN2][LEN2], aaa[LEN3][LEN3][LEN3], bbb[LEN3][LEN3][LEN3];
int indx[LEN] __attribute__((aligned(16)));
long sqroot(long);

TYPE* /*__restrict__*/ xx;
TYPE* yy;
TYPE arr[LEN];


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

//loop 3D (2-sum MW) imperfect 
void ex18()
//void example14() 
{
  int k,j,i=0;
  int len = LEN2/2;
  for (k = 0; k < len; k++) {
    int sum = 0;
    for (i = 0; i < len; i++)
      #pragma GCC unroll 2
      for (j = 0; j < len; j++)
          sum += aa[i+k][j] * bb[i][j];

    a[k] = sum;
  }

}

int main(){

	return 0;
}

