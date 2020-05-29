
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
#define LEN2 256

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
                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],tt[LEN2][LEN2];
int indx[LEN] __attribute__((aligned(16)));


TYPE* /*__restrict__*/ xx;
TYPE* yy;
TYPE arr[LEN];



// 1d-mw
// loop peeling
int ex1020()
{

  b[0] = 0;
  b[1] = 0;
  b[2] = 0;
	for (int j = 3; j < LEN ; j++) {
		  b[j] = a[j];
	}
	return 0;
}

// 1d-sum
// loop peeling
int ex20()
{
  int sum = 0;
  sum += 2*b[0];
  sum += 2*b[1];
  sum += 2*b[2];
	for (int j = 3; j < LEN ; j++) {
		  sum += b[j];
	}
	return sum;
}


// 1d-mw
// loop peeling
int ex1020_8()
{

  a[0] = 100;
  a[1] = 100;
  a[2] = 100;
  #pragma GCC unroll 2
	for (int j = 3; j < LEN ; j++) {
		  a[j] = b[j]+2;
	}
	return 0;
}

// 1d-sum
// loop peeling
int ex20_8()
{
  int sum = 0;
  sum += 4;
  #pragma GCC unroll 2
	for (int j = 1; j < LEN ; j++) {
		  sum += a[j];
	}
	return sum;
}




//loop unswitching, distribution 1D loop
// icc --NB
//gcc vec
int ex108()
{

//	control flow
//	if test using loop index

	int mid = (LEN/2);
		for (int i = 0; i < mid; i++) {
				a[i] += b[i];
    }
		for (int i = mid; i < LEN; i++) {
				a[i] += c[i];
		}
	return 0;
}

//loop unswitching, distributiona 1D loop
//Sum
int ex8()
{

//	control flow
//	if test using loop index
  int sum = 0;
  int len = 16384;
	int mid = (len/2);
		for (int i = 0; i < mid; i++) {
				sum += b[2*i];
    }
		for (int i = mid; i < len; i++) {
				sum += c[i];
		}
	return sum;
}

int ex8_8()
{

//	control flow
//	if test using loop index
  int sum = 0;
	int mid = (LEN/2);
		for (int i = 0; i < mid; i++) {
				sum += c[a[i]];
    }
  #pragma GCC unroll 2
		for (int i = mid; i < LEN; i++) {
				sum += b[i];
		}
	return sum;
}

//loop fission 1D
int ex22()
{

  int sum1 = 0;
  int sum2 = 0;
	for (int i = 0; i < LEN; i++) {
		sum1 += a[c[i]];
	}
	for (int i = 0; i < LEN; i++) {
		sum2 += b[i];
	}
	return sum1 + sum2;
}

//loop unroll complete 1D
//Sum
int ex27()
{

  int sum1 = 0;
	sum1 += a[0];
	sum1 += a[1];
	sum1 += a[2];
	sum1 += a[3];
	for (int j = 4; j < LEN; j++) 
	  sum1 += b[j];
	return sum1;
}

int ex28()
{

  int sum1 = 0;
	c[0] += a[0];
	c[1] += a[1];
	c[2] += a[2];
	for (int j = 3; j < LEN; j++) 
	  c[j] += b[j];
	return 0;
}

//remainder loop  fusion
int ex25(int n)
{

  int sum1 = 0;
  int sum2 = 0;
  if( n < 4)
  {
    if(n >= 0) {  sum1 += a[0]; sum2 += b[0];}
    if(n >= 1) {  sum1 += a[1]; sum2 += b[1];}
    if(n >= 2) {  sum1 += a[2]; sum2 += b[2];}
    if(n >= 3) {  sum1 += a[3]; sum2 += b[3];}
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

int main(){

	return 0;
}

