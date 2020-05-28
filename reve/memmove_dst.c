// openbsd -- simplified; transfer at byte level instead of word
#include <stddef.h>

void *memmove(void *dst0, const void *src0, size_t length) {
    char *dst = dst0;
    const char *src = src0;
    size_t t;

    if (length == 0 || dst == src) /* nothing to do */
        goto done;

    if ((unsigned long)dst < (unsigned long)src) {
        t = length;
        if (t) {
            do {
                *dst++ = *src++;
            } while (--t);
        }
    } else {
        src += length;
        dst += length;
        t = length;
        if (t) {
            do {
                *--dst = *--src;
            } while (--t);
        }
    }
done:
    return (dst0);
}

int main(int argc, char* argv[])
{
  return 0;
}
