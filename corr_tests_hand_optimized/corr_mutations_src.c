
#define LEN 32000
#define LEN1 3200
#define LEN2 2048

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
                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],tt[LEN2][LEN2];

// 1D-MW
// loop peeling
int ex1020()
{

	for (int j = 0; j < LEN ; j++) {
    if(j < 3)
      b[j] = 0;
    else 
		  b[j] = a[j];
	}
	return 0;
}

// 1D-Sum
// loop peeling
int ex20()
{
  int sum = 0;
	for (int j = 0; j < LEN ; j++) {
    if(j < 3)
      sum += 2*b[j];
    else 
		  sum += b[j];
	}
	return sum;
}

// 1D-MW
// loop peeling
// 8 uf
int ex1020_8()
{

	for (int j = 0; j < LEN ; j++) {
    if(j < 3)
      a[j] = 100;
    else 
		  a[j] = b[j]+2;
	}
	return 0;
}


//loop unswitching, distribution 1D loop
// MW
int ex108()
{

//	control flow
//	if test using loop index

	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i < mid) 
				a[i] += b[i];
			if (i >= mid) 
				a[i] += c[i];
		}
	return 0;
}

//loop unswitching, distribution 1D loop
//Sum
int ex8()
{

//	control flow
//	if test using loop index
  int sum = 0;
  int len = 16384;
	int mid = (len/2);
		for (int i = 0; i < len; i++) {
			if (i < mid) 
				sum += b[2*i];
			if (i >= mid) 
				sum += c[i];
		}
	return sum;
}

//loop unswitching, distribution 1D loop
//Sum
////8 uf
int ex8_8()
{

//	control flow
//	if test using loop index
  int sum = 0;
  int len = 16384;
	int mid = (LEN/2);
		for (int i = 0; i < LEN; i++) {
			if (i < mid) 
				sum += c[a[i]];
			if (i >= mid) 
				sum += b[i];
		}
	return sum;
}


//loop unroll complete 1D
//Sum
int ex27()
{

  int sum1 = 0;
	for (int j = 0; j < 3; j++) 
	  sum1 += a[j];
	for (int j = 3; j < LEN; j++) 
	  sum1 += b[j];
	return sum1;
}

//loop unroll complete 1D
//MW
int ex28()
{

  int sum1 = 0;
	for (int j = 0; j < 3; j++) 
	  c[j] += a[j];
	for (int j = 3; j < LEN; j++) 
	  c[j] += b[j];
	return 0;
}


//remainder loop  fusion
int ex25(int n)
{

  int sum1 = 0;
  int sum2 = 0;
	for (int i = 0; i < n; i++) {
		sum1 += a[i];
	}
	for (int i = 0; i < n; i++) {
		sum2 += b[i];
	}
	return sum1 + sum2;
}


int main(){

	return 0;
}

