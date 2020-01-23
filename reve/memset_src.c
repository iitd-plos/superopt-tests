/* dietlibc */
#include <stddef.h>
void* memset(void * dst, int s, size_t count) {
    register char * a = dst;
    count++;	/* this actually creates smaller code than using count-- */
    while (--count) {
        *a++ = s;
    }
    return dst;
}

int main(int argc, char* argv[])
{
  return 0;
}
