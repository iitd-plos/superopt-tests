/* openbsd */
#include <stddef.h>
size_t strcspn(const char *s, const char *reject) {
    const char *p, *spanp;
    char c, sc;
    for (p = s; *p;) {
        c = *p++;
        spanp = reject;
        do {
            if ((sc = *spanp++) == c)
                return (p - 1 - s);
        } while (sc != 0);
    }
    return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
