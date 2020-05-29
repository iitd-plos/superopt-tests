
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


//3-way branch 1D loop
//Sum
int ex9()
{

  int sum = 0;
	for (int i = 0; i < LEN; i++) {
		if (d[i] < (TYPE)0.) {
			sum--;
		} else if (d[i] == (TYPE)0.) {
			sum = sum;
		} else {
			sum++;
		}
	}
	return sum;
}

int main(){

	return 0;
}


