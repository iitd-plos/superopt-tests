/*
FUNCTION
	<<memrchr>>---reverse search for character in memory

INDEX
	memrchr

SYNOPSIS
	#include <string.h>
	void *memrchr(const void *<[src]>, int <[c]>, size_t <[length]>);

DESCRIPTION
	This function searches memory starting at <[length]> bytes
	beyond <<*<[src]>>> backwards for the character <[c]>.
	The search only ends with the first occurrence of <[c]>; in
	particular, <<NUL>> does not terminate the search.

RETURNS
	If the character <[c]> is found within <[length]> characters
	of <<*<[src]>>>, a pointer to the character is returned. If
	<[c]> is not found, then <<NULL>> is returned.

PORTABILITY
<<memrchr>> is a GNU extension.

<<memrchr>> requires no supporting OS subroutines.

QUICKREF
	memrchr
*/

#include <string.h>
#include <limits.h>

/* Nonzero if X is not aligned on a "long" boundary.  */
#define UNALIGNED(X) ((long)(X + 1) & (sizeof (long) - 1))

/* How many bytes are loaded each iteration of the word copy loop.  */
#define LBLOCKSIZE (sizeof (long))

/* Threshhold for punting to the bytewise iterator.  */
#define TOO_SMALL(LEN)  ((LEN) < LBLOCKSIZE)

#if LONG_MAX == 2147483647L
#define DETECTNULL(X) (((X) - 0x01010101) & ~(X) & 0x80808080)
#else
#if LONG_MAX == 9223372036854775807L
/* Nonzero if X (a long int) contains a NULL byte. */
#define DETECTNULL(X) (((X) - 0x0101010101010101) & ~(X) & 0x8080808080808080)
#else
#error long int is not a 32bit or 64bit type.
#endif
#endif

#ifndef DETECTNULL
#error long int is not a 32bit or 64bit byte
#endif

/* DETECTCHAR returns nonzero if (long)X contains the byte used
   to fill (long)MASK. */
#define DETECTCHAR(X,MASK) (DETECTNULL(X ^ MASK))

void *
memrchr (const void *src_void,
	int c,
	size_t length)
{
  const unsigned char *src = (const unsigned char *) src_void + length - 1;
  unsigned char d = c;
  // NOT PREFER_SPEED_OVER_SIZE
  while (length--)
    {
      if (*src == d)
        return (void *) src;
      src--;
    }

  return NULL;
}
