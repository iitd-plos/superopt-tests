/*****************************************************************************/
/*
 * The Computer Lannguage Shootout
 * http://shootout.alioth.debian.org/
 * Contributed by Heiner Marxen
 *
 * "fannkuch"	for C gcc
 *
 * $Id: fannkuch-gcc.code,v 1.33 2006/02/25 16:38:58 igouy-guest Exp $
 */

#include <stdio.h>
#include <stdlib.h>

#include "eqchecker_helper.h"

#define Int	int
#define Aint int

//__attribute__((noinline))void reverse_perm_old(Aint* perm1, Aint* perm, long *flips)
//{
//  int i;
//#define XCH(x,y)  { Aint t_mp; t_mp=(x); (x)=(y); (y)=t_mp; }
//   int k = perm1[0];    /* cache perm[0] in k */
//   do {     /* k!=0 ==> k>0 */
//    Int j;
//    for( i=1, j=k-1 ; i<j ; ++i, --j ) {
//        XCH(perm[i], perm[j])
//    }
//    *flips = *flips + 1;
//    /*
//     * Now exchange k (caching perm[0]) and perm[k]... with care!
//     * XCH(k, perm[k]) does NOT work!
//     */
//    j=perm[k]; perm[k]=k ; k=j;
//      }while( k );
//}

__attribute__((noinline)) void init_perm1(Aint* perm1, int n)
{
  int i;
  for( i=0 ; i<n ; ++i ) perm1[i] = i;	/* initial (trivial) permu */
}

__attribute__((noinline))void copy_perm(Aint* perm1, Aint* perm, int n)
{
  int i;
	for( i=1 ; i<n ; ++i ) {
	  /* perm = perm1 */
		perm[i] = perm1[i];
	}
}

__attribute__((noinline))long reverse_perm(Aint* perm1, Aint* perm, long flipsmax)
{
  long flips = 0;
  int i;
#define XCH(x,y)	{ Aint t_mp; t_mp=(x); (x)=(y); (y)=t_mp; }
   int k = perm1[0];		/* cache perm[0] in k */
   do {			/* k!=0 ==> k>0 */
		Int	j;
		for( i=1, j=k-1 ; i<j ; ++i, --j ) {
		    XCH(perm[i], perm[j])
		}
		flips = flips + 1;
		/*
		 * Now exchange k (caching perm[0]) and perm[k]... with care!
		 * XCH(k, perm[k]) does NOT work!
		 */
		j=perm[k]; perm[k]=k ; k=j;
	    }while( k );
      if( flipsmax < flips ) {
        flipsmax = flips;
      }
  return flipsmax;
}

__attribute__((noinline))long copy_and_reverse_perm(Aint* perm1, Aint* perm, long flipsmax, int n)
{
  const int n1  = n - 1;
  if( ! (perm1[0]==0 || perm1[n1]==n1) ) {
    copy_perm(perm1, perm, n);
    flipsmax = reverse_perm(perm1, perm, flipsmax);
  }
  return flipsmax;
}
__attribute__((noinline))void print_perm(Aint* perm1, int n)
{
    int		i;
	  for( i=0 ; i<n ; ++i ) printf("%d", (int)(1+perm1[i]));
	  printf("\n");
}

long
fannkuch( int n )
{
  Aint* perm;
  Aint* perm1;
  Aint* count;
  long  flipsmax;
  int   r;
  int   i;
  int   k;
  int   didpr;

  if( n < 1 ) return 0;
  r = n; didpr = 0; flipsmax = 0;

  perm1 = MYmycalloc(n, sizeof(*perm1));
  init_perm1(perm1, n);
  perm  = MYmycalloc(n, sizeof(*perm ));
  count = MYmycalloc(n, sizeof(*count));

  for(;;) {
    if( didpr < 30 ) {
        print_perm(perm1, n);
        ++didpr;
    }
    flipsmax = copy_and_reverse_perm(perm1, perm, flipsmax, n);
	  for( ; r!=1 ; --r ) {
	      count[r-1] = r;
	  }
    for(;;) {
      if( r == n ) {
        return flipsmax;
      }
      /* rotate down perm[0..r] by one */
      {
        Aint perm0 = perm1[0];
        i = 0;
        while( i < r ) {
          k = i+1;
          perm1[i] = perm1[k];
          i = k;
        }
        perm1[r] = perm0;
      }
      if( (count[r] -= 1) > 0 ) {
        break;
      }
      ++r;
    }
  }
}


int
main( int argc, char* argv[] )
{
    int		n = (argc>1) ? atoi(argv[1]) : 10;

    printf("Pfannkuchen(%d) = %ld\n", n, fannkuch(n));
    return 0;
}
