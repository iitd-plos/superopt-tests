/*
FUNCTION
        <<memccpy>>---copy memory regions with end-token check

SYNOPSIS
        #include <string.h>
        void* memccpy(void *restrict <[out]>, const void *restrict <[in]>, 
                      int <[endchar]>, size_t <[n]>);

DESCRIPTION
        This function copies up to <[n]> bytes from the memory region
        pointed to by <[in]> to the memory region pointed to by
        <[out]>.  If a byte matching the <[endchar]> is encountered,
	the byte is copied and copying stops.

        If the regions overlap, the behavior is undefined.

RETURNS
        <<memccpy>> returns a pointer to the first byte following the
	<[endchar]> in the <[out]> region.  If no byte matching
	<[endchar]> was copied, then <<NULL>> is returned.

PORTABILITY
<<memccpy>> is a GNU extension.

<<memccpy>> requires no supporting OS subroutines.

	*/
#include <stddef.h>
#include <string.h>
#include <limits.h>

/* Nonzero if either X or Y is not aligned on a "long" boundary.  */
#define UNALIGNED(X, Y) \
  (((long)X & (sizeof (long) - 1)) | ((long)Y & (sizeof (long) - 1)))

/* How many bytes are copied each iteration of the word copy loop.  */
#define LITTLEBLOCKSIZE (sizeof (long))

/* Threshhold for punting to the byte copier.  */
#define TOO_SMALL(LEN)  ((LEN) < LITTLEBLOCKSIZE)

/* Macros for detecting endchar */
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


void *
memccpy (void *restrict dst0,
	const void *restrict src0,
	int endchar0,
	size_t len0)
{
  // PREFER_SIZE_OVER_SPEED
  void *ptr = NULL;
  char *dst = (char *) dst0;
  char *src = (char *) src0;
  char endchar = endchar0 & 0xff;

  while (len0--)
    {
      if ((*dst++ = *src++) == endchar)
        {
          ptr = dst;
          break;
        }
    }

  return ptr;
}
