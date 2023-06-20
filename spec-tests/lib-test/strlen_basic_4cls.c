#include <stddef.h>

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

size_t strlen(struct chunked_list *l) {
    register size_t i;
    for (i=0; l->vals[0]; l = l->next) {
        ++i;

        if (!l->vals[1]) break;
        ++i;

        if (!l->vals[2]) break;
        ++i;

        if (!l->vals[3]) break;
        ++i;
    }
    return i;
}