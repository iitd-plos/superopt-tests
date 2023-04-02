/*
FUNCTION
	<<strcmp>>---character string compare
	
INDEX
	strcmp

SYNOPSIS
	#include <string.h>
	int strcmp(const char *<[a]>, const char *<[b]>);

DESCRIPTION
	<<strcmp>> compares the string at <[a]> to
	the string at <[b]>.

RETURNS
	If <<*<[a]>>> sorts lexicographically after <<*<[b]>>>,
	<<strcmp>> returns a number greater than zero.  If the two
	strings match, <<strcmp>> returns zero.  If <<*<[a]>>>
	sorts lexicographically before <<*<[b]>>>, <<strcmp>> returns a
	number less than zero.

PORTABILITY
<<strcmp>> is ANSI C.

<<strcmp>> requires no supporting OS subroutines.

QUICKREF
	strcmp ansi pure
*/

#include <string.h>
#include <limits.h>

/* Nonzero if either X or Y is not aligned on a "long" boundary.  */
#define UNALIGNED(X, Y) \
  (((long)X & (sizeof (long) - 1)) | ((long)Y & (sizeof (long) - 1)))

/* DETECTNULL returns nonzero if (long)X contains a NULL byte. */
#if LONG_MAX == 2147483647L
#define DETECTNULL(X) (((X) - 0x01010101) & ~(X) & 0x80808080)
#else
#if LONG_MAX == 9223372036854775807L
#define DETECTNULL(X) (((X) - 0x0101010101010101) & ~(X) & 0x8080808080808080)
#else
#error long int is not a 32bit or 64bit type.
#endif
#endif

#ifndef DETECTNULL
#error long int is not a 32bit or 64bit byte
#endif

int
strcmp_newlib_small (const char *s1,
	const char *s2)
{ 
  while (*s1 != '\0' && *s1 == *s2)
    {
      s1++;
      s2++;
    }

  return (*(unsigned char *) s1) - (*(unsigned char *) s2);
}