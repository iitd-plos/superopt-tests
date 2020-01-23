/* glibc */
#include <stddef.h>

size_t strcspn(const char *s, const char *reject) {
    size_t count = 0;

    while (*s) {
        char ch = *s++;
        const char *t = reject;
        for (;;) {
            if (*t == ch)
                return count;
            if (!*t) {
                ++count;
                break;
            }
            ++t;
        }
    }

    return count;
}

int main(int argc, char* argv[])
{
  return 0;
}
