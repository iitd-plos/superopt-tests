/* dietlibc */
#include <stddef.h>

size_t strcspn(const char *s, const char *reject) {
    size_t count = 0;

    for (; *s; ++s) {
        for (int i = 0; reject[i]; ++i) {
            if (*s == reject[i])
                return count;
        }
        ++count;
    }

    return count;
}

int main(int argc, char* argv[])
{
  return 0;
}
