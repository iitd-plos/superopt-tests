/* fast strcmp -- Copyright (C) 2003 Thomas M. Ogrisegg <tom@hi-tek.fnord.at> */
#include <string.h>
#include <stdint.h>

#define MKW(x) ((unsigned long)x*0x0101010101010101)

#define STRALIGN(x) ((((uintptr_t)x+sizeof(long)-1)&(-sizeof(long)))-(uintptr_t)x)

#define UNALIGNED(x,y) (((unsigned long)x & (sizeof (unsigned long)-1)) ^ ((unsigned long)y & (sizeof (unsigned long)-1)))

#if __BYTE_ORDER == __LITTLE_ENDIAN
# define GFC(x) ((x)&0xff)
# define INCSTR(x) x >>= 8;
#else
# define GFC(x) (((x)>>(sizeof(x)*8-8))&0xff)
# define INCSTR(x) x <<= 8;
#endif

int
strcmp (const char *s1, const char *s2)
{

    const unsigned long *lx1, *lx2;
    unsigned long   l1, l2;
    int             tmp;

    if (UNALIGNED(s1, s2)
    ) {
        while (*s1 && *s1 == *s2) s1++, s2++;
        return (*(unsigned char*)s1 - *(unsigned char*)s2);
    }

    if ((tmp = STRALIGN(s1)))
        for (; tmp--; s1++, s2++)
            if (!*s1 || *s1 != *s2)
                return (*(unsigned char*)s1 - *(unsigned char*)s2);

    lx1 = (unsigned long *) s1;
    lx2 = (unsigned long *) s2;

    while (1) {
        l1 = *lx1++;
        l2 = *lx2++;
        if ((((l1 - MKW(0x1ul)) & ~l1) & MKW(0x80ul)) ||
            ((((l2 - MKW(0x1ul)) & ~l2) & MKW(0x80ul))) || l1 != l2) {
            unsigned char c1, c2;
            while (1) {
		        c1 = GFC(l1);
                c2 = GFC(l2);
                if (!c1 || c1 != c2)
                    return (c1 - c2);
                INCSTR(l1);
                INCSTR(l2);
            }
        }
    }
}