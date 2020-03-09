/* glibc */
#include <stddef.h>

static char *strchr(register const char *t, int c) {
    register char ch;

    ch = c;
    for (;;) {
        if (*t == ch)
            break;
        if (!*t)
            return 0;
        ++t;
    }
    return (char *)t;
}

size_t strcspn(const char *s, const char *reject) {
    size_t count = 0;

    while (*s) {
        char ch = *s++;
        if (strchr(reject, ch) == NULL) { // inlining is required
            ++count;
        } else {
            return count;
        }
    }

    return count;
}

int main(int argc, char* argv[])
{
  return 0;
}
