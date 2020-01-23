#include <stddef.h>

int lookuptable(const unsigned char *s1) {
    int val = *s1;
    if (val >= 'A' && val <= 'Z') {
        return val + 'a' - 'A';
    }
    return val;
}

int main()
{
  return 0;
}
