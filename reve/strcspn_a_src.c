/* dietlibc */
#include <stddef.h>
size_t strcspn(const char *s, const char *reject) {
    size_t l = 0;
    int i;
    for (; *s; ++s) {
        for (i = 0; reject[i]; ++i) {
            if (*s == reject[i])
                return l;
        }
        ++l;
    }
    return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
