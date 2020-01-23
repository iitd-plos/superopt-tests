/* glibc */
#include <stddef.h>
void *memrchr(const void *s, int c, size_t n) {
    const unsigned char *char_ptr;
    char_ptr = (unsigned char*)s + n;
    while (n-- > 0) {
        if (*--char_ptr == c)
            return (void *)char_ptr;
    }

    return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
