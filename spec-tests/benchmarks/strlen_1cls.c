#include <stddef.h>
#define n 4
struct chunked_list {
    char chars[n];
    struct chunked_list *next;
};

size_t strlen(struct chunked_list *l) {
    register size_t i, j;
    i = 0;
    while (1) {
        for (j = 0; j < n; ++j) {
            if (l->chars[j]) {
                i++;
            } else {
                return i;
            }
        }
        l = l->next;
    }
}
