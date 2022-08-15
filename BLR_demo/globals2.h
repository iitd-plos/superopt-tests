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

#define TYPE int

#define lll LEN


//TYPE val = 1;
//__attribute__ ((aligned(16))) TYPE X[lll],Y[lll],Z[lll],U[lll],V[lll];

//TYPE array[LEN2*LEN2] __attribute__((aligned(16)));

//TYPE x[LEN] __attribute__((aligned(16)));
//TYPE temp;

__attribute__((aligned(16))) TYPE a[LEN], b[LEN],c[LEN],d[LEN]; //,e[LEN],
//                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],tt[LEN2][LEN2];


//TYPE indx[LEN] __attribute__((aligned(16)));


//TYPE* /*__restrict__*/ xx;
//TYPE* yy;
//TYPE arr[LEN];
