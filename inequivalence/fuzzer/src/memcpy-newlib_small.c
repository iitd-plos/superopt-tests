/*
FUNCTION
        <<memcpy>>---copy memory regions

SYNOPSIS
        #include <string.h>
        void* memcpy(void *restrict <[out]>, const void *restrict <[in]>,
                     size_t <[n]>);

DESCRIPTION
        This function copies <[n]> bytes from the memory region
        pointed to by <[in]> to the memory region pointed to by
        <[out]>.

        If the regions overlap, the behavior is undefined.

RETURNS
        <<memcpy>> returns a pointer to the first byte of the <[out]>
        region.

PORTABILITY
<<memcpy>> is ANSI C.

<<memcpy>> requires no supporting OS subroutines.

QUICKREF
        memcpy ansi pure
	*/

#include <string.h>

/* Nonzero if either X or Y is not aligned on a "long" boundary.  */
#define UNALIGNED(X, Y) \
  (((long)X & (sizeof (long) - 1)) | ((long)Y & (sizeof (long) - 1)))

/* How many bytes are copied each iteration of the 4X unrolled loop.  */
#define BIGBLOCKSIZE    (sizeof (long) << 2)

/* How many bytes are copied each iteration of the word copy loop.  */
#define LITTLEBLOCKSIZE (sizeof (long))

/* Threshhold for punting to the byte copier.  */
#define TOO_SMALL(LEN)  ((LEN) < BIGBLOCKSIZE)

void *
memcpy_newlib_small (void *restrict dst0,
	const void *restrict src0,
	size_t len0)
{
  /* PREFER_SIZE_OVER_SPEED */
  char *dst = (char *) dst0;
  char *src = (char *) src0;

  void *save = dst0;

  while (len0--)
    {
      *dst++ = *src++;
    }

  return save;
}