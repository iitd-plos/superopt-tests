#include <unistd.h>
#include <sys/types.h>
// #include <byteswap.h>

/* Updated implementation based on byteswap.h from Miles Bader
 * <miles@gnu.org>.  This should be much faster on arches with machine
 * specific, optimized definitions in include/bits/byteswap.h (i.e. on
 * x86, use the bswap instruction on i486 and better boxes).  For
 * platforms that lack such support, this should be no slower than it
 * was before... */

// Define this macro to avoid a function call to __bswap_16()
#define BSWAP_16(x) ((__uint16_t) ((((x) >> 8) & 0xff) | (((x) & 0xff) << 8)))

void swab_uClibc (const void *source, void *dest, ssize_t count)
{
    const unsigned short *from = source, *from_end = from + (count >> 1);
    unsigned short junk;
    unsigned short *to = dest;

    while (from < from_end) {
	/* Don't put '*from++'into the bswap_16() macros
	 * or mad things will happen on macro expansion */
	junk=*from++;
	*to++ = BSWAP_16(junk);
    }
}