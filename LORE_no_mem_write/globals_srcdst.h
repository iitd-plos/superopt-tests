/* LORE LOOP NESTS -- Functions having atleast one loop nest without Mem write */
// This file contains the C source code for functions which are either not auto-vectorized or generate non-bismilar assembly auto-vectorization
// The optimized/transformed C source code for these functions is attached in corr_mutations_dst.c file, which are then auto-vectorized by GCC and Clang

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

#define TYPE int
__attribute__((aligned(16))) TYPE a[LEN],b[LEN],c[LEN],d[LEN],e[LEN],
                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],tt[LEN2][LEN2];
