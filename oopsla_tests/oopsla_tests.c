
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


TYPE ex1(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	return ret;
}

TYPE ex2(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
	return ret;
}

TYPE ex3(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		 ret += aa[i][j];
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	return ret;
}

TYPE ex4(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN2; i++) {
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
		ret += a[i];
  }
	return ret;
}

TYPE ex5(){
	TYPE ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += a[i];
	for (int i = 0; i < LEN2; i++)
	  for (int j = 0; j < LEN2; j++)
		  ret += aa[i][j];
	return ret;
}

int ex6()
{

	for (int i = 1; i < LEN2; i++) {
		for (int j = 0; j <= i - 1; j++) {
			a[i] += bb[i][j] * a[i];
		}
	}
	return 0;
}

int ex7()
{
  int sum = 0;
	for (int i = 1; i < LEN2; i++) {
		for (int j = 0; j <= i - 1; j++) {
			sum += bb[i][j] * a[i];
		}
	}
	return sum;
}

void ex8(int *norm1, int *norm2) {
   int i,j;
   int sum1 = 0;
   for (i = 0; i < LEN2; i++) {
     for (j = 0; j < LEN2; j++) {
       sum1 += (aa[i][j] + bb[i][j])/2;
     }
   }
   int sum2 = 0; 
   for (i = 0; i < LEN2; i++) {
     for (j = 0; j < LEN2; j++) {
       sum2 += (aa[i][j] + aa[j][i]) / 2;
     }
   }  
  *norm1 = sum1;
  *norm2 = sum2;
}

int ex9()
{

//	imperfectly nested loops

		for (int i = 0; i < LEN2; i++) {
			a[i] += b[i] * c[i];
			for (int j = 1; j < LEN2; j++) {
				aa[i][j] = aa[i-1][j] + bb[i][j] * a[i];
			}
		}
	return 0;
}

int ex30()
{

//	imperfectly nested loops
    int sum = 0;
		for (int i = 0; i < LEN2; i++) {
			a[i] += b[i] * c[i];
			for (int j = 1; j < LEN2; j++) {
				sum += aa[i-1][j] + bb[i][j] * a[i];
			}
		}
	return sum;
}

int ex10()
{

//	control flow
//	if test using loop index

	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i+1 < mid) {
				a[i] += b[i] * c[i];
			} else {
				a[i] += b[i] * d[i];
			}
		}
	return 0;
}

int ex31()
{

//	control flow
//	if test using loop index
  int sum =0;
	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i+1 < mid) {
				sum += b[i] * c[i];
			} else {
				sum += b[i] * d[i];
			}
		}
	return sum;
}

int ex11()
{

//	control flow
//	test for dependences arising from guard variable computation.

		for (int i = 0; i < LEN-1; i++) {
				if (a[i] >= (TYPE)0.) {
					goto L20;
				}
				if (b[i] >= (TYPE)0.) {
					goto L30;
				}
				a[i] += c[i] * d[i];
L30:
				b[i+1] = c[i] + d[i] * e[i];
L20:
;
		}
	return 0;
}

int ex32()
{

//	control flow
//	test for dependences arising from guard variable computation.
    int sum = 0;
		for (int i = 0; i < LEN-1; i++) {
				if (a[i] >= (TYPE)0.) {
					goto L20;
				}
				if (b[i] >= (TYPE)0.) {
					goto L30;
				}
				sum += c[i] * d[i];
L30:
				sum += c[i] + d[i] * e[i];
L20:
;
		}
	return sum;
}


//icc undef pblend

int ex12()
{

//	control flow
//	if/goto to block if-then-else

		for (int i = 0; i < LEN; i++) {
			if (a[i] > (TYPE)0.) {
				goto L20;
			}
			b[i] = -b[i] + d[i] * e[i];
			goto L30;
L20:
			c[i] = -c[i] + d[i] * e[i];
L30:
			a[i] = b[i] + c[i] * d[i];
		}
	return 0;
}

int ex33()
{

//	control flow
//	if/goto to block if-then-else
    int sum =0;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (TYPE)0.) {
				goto L20;
			}
			sum += -b[i] + d[i] * e[i];
			goto L30;
L20:
			sum += -c[i] + d[i] * e[i];
L30:
			sum += b[i] + c[i] * d[i];
		}
	return sum;
}


int ex13()
{

//	control flow
//	vector if/gotos

		for (int i = 0; i < LEN; i++) {
			if (a[i] > (TYPE)0.) {
				goto L20;
			}
			b[i] = -b[i] + d[i] * d[i];
			if (b[i] <= a[i]) {
				goto L30;
			}
			c[i] += d[i] * e[i];
			goto L30;
L20:
			c[i] = -c[i] + e[i] * e[i];
L30:
			a[i] = b[i] + c[i] * d[i];
		}
    return 0;
}

int ex34()
{

//	control flow
//	vector if/gotos
    int sum = 0;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (TYPE)0.) {
				goto L20;
			}
			sum += -b[i] + d[i] * d[i];
			if (b[i] <= a[i]) {
				goto L30;
			}
			sum += d[i] * e[i];
			goto L30;
L20:
			sum += -c[i] + e[i] * e[i];
L30:
			sum += b[i] + c[i] * d[i];
		}
    return sum;
}

int ex14()
{

//	control flow
//	vector if/gotos

		for (int i = 0; i < LEN; i++) {
			if (a[i] < (TYPE)0.) {
				if (b[i] > a[i]) {
					c[i] += d[i] * e[i];
				}
			}
		}
	return 0;
}


//icc undef pblend

int ex15( TYPE x)
{

//	control flow
//	scalar and vector ifs

		for (int i = 0; i < LEN; i++) {
			if (a[i] > b[i]) {
				a[i] += b[i] * d[i];
				if (LEN > 10) {
					c[i] += d[i] * d[i];
				} else {
					c[i] = d[i] * e[i] + (TYPE)1.;
				}
			} else {
				b[i] = a[i] + e[i] * e[i];
				if (x > (TYPE)0.) {
					c[i] = a[i] + d[i] * d[i];
				} else {
					c[i] += e[i] * e[i];
				}
			}
		}
	return 0;
}


int ex36( TYPE x)
{

//	control flow
//	scalar and vector ifs
    int sum = 0;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > b[i]) {
				sum += b[i] * d[i];
				if (LEN > 10) {
					sum += d[i] * d[i];
				} else {
					sum += d[i] * e[i] + (TYPE)1.;
				}
			} else {
				sum = a[i] + e[i] * e[i];
				if (x > (TYPE)0.) {
					sum += a[i] + d[i] * d[i];
				} else {
					sum += e[i] * e[i];
				}
			}
		}
	return sum;
}




int ex17()
{

//	reductions

	int xindex, yindex;
	TYPE sum, chksum;
		sum = 0;
		xindex = 0;
		yindex = 0;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				if (aa[i][j] > 0) {
					sum += aa[i][j];
					xindex += i;
					yindex += j;
				}
			}
		}
		chksum = sum + (TYPE) xindex + (TYPE) yindex;
	temp = sum + xindex+1 + yindex+1;
	return 0;
}

int ex18()
{

//	reductions
//	conditional sum reduction

	TYPE sum;
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (TYPE)0.) {
				sum += a[i];
			}
		}
	temp = sum;
	return 0;
}

// ICC  UNDEF OPCODE -- movmskps

//int ex19()
//{
//
////	search loops
////	if to last-1
//
//	int j;
//	TYPE chksum;
//		j = -1;
//		for (int i = 0; i < LEN; i++) {
//			if (a[i] < (TYPE)0.) {
//				j = i;
//			}
//		}
//		chksum = (TYPE) j;
//	temp = j+1;
//	return 0;
//}


int ex20( TYPE t)
{

//	search loops
//	first value greater than threshoLEN

	int index;
	TYPE value;
	TYPE chksum;
		index = -2;
		value = -1.;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > t) {
				index = i;
				value = a[i];
				goto L20;
			}
		}
L20:
		chksum = value + (TYPE) index;
	temp = value;
	return 0;
}


int ex21()
{

//	loop rerolling
//	unrolled saxpy

	TYPE alpha = c[0];
	int i1 = 0;
	for (int i = 0; i < LEN; i = i+5) {
	  i1++;
		a[i] += alpha * b[i];
		a[i + 1] += alpha * b[i + 1];
		a[i + 2] += alpha * b[i + 2];
		a[i + 3] += alpha * b[i + 3];
		a[i + 4] += alpha * b[i + 4];
	}
	return 0;
}

int ex37()
{

//	loop rerolling
//	unrolled saxpy

	TYPE sum = 0;
	int i1 = 0;
	for (int i = 0; i < LEN; i = i+5) {
	  i1++;
		sum +=  b[i];
		sum +=  b[i + 1];
		sum +=  b[i + 2];
		sum +=  b[i + 3];
		sum +=  b[i + 4];
	}
	return sum;
}


int ex22()
{

//	storage classes and equivalencing
//	common and equivalence statement
//	anti-dependence, threshold of 4

	xx = array + 4;
		for (int i = 0; i < LEN; i++) {
			xx[i] = array[i + 8] + a[i];
		}
	temp = 0;
	for (int i = 0; i < LEN; i++){
		temp += xx[i];
	}
	return 0;
}

int ex23()
{

//	control flow
//	vector if/gotos
int sum = 0;
		for (int i = 0; i < LEN; i++) {
			if (a[i] < (TYPE)0.) {
				if (b[i] > a[i]) {
					sum += d[i] * e[i];
				}
			}
		}
	return sum;
}

 int ex25()
 {
 
 //	non-logical if's
 //	arithmetic if
 
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

 int ex38()
 {
 
 //	non-logical if's
 //	arithmetic if
    int sum = 0;
 		for (int i = 0; i < LEN; i++) {
 			if (d[i] < (TYPE)0.) {
 				sum += b[i] * c[i];
 			} else if (d[i] == (TYPE)0.) {
 				sum += b[i] * b[i];
 			} else {
 				sum += c[i] * c[i];
 			}
 		}
 	return sum;
 }


int ex28(int* /*__restrict__*/ ip)
{

//	indirect addressing
//	sparse dot product
//	gather is required

	TYPE sum;
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			sum += a[i] * b[ip[i]];
		}
	temp = sum;
	return 0;
}

int ex29()
{

//	diagonals
//	identity matrix, best results vectorize both inner and outer loops

		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				aa[i][j] = (TYPE)0.;
			}
			aa[i][i] = (TYPE)1.;
		}
	return 0;
}


int main(){

	return 0;
}

