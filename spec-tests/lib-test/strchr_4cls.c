#include <stddef.h>

typedef struct chunked_list {
    char vals[4];
    struct chunked_list *next;
} chunked_list;

typedef struct chunked_list_pos {
    struct chunked_list *ptr;
    unsigned index;
} chunked_list_pos;

chunked_list_pos strchr(chunked_list *l, int c) {
    register char ch;
    register unsigned index;

    ch = c;
    for (;;) {
        if (l->vals[0] == ch) {
            index = 0;
            break;
        }
        if (!l->vals[0]) return (chunked_list_pos){ .ptr = 0, .index = 0 };
        l = l->next;

        if (l->vals[1] == ch) {
            index = 1;
            break;
        }
        if (!l->vals[1]) return (chunked_list_pos){ .ptr = 0, .index = 0 };
        l = l->next;

        if(l->vals[2] == ch) {
            index = 2;
            break;
        }
        if (!l->vals[2]) return (chunked_list_pos){ .ptr = 0, .index = 0 };
        l = l->next;

        if (l->vals[3] == ch) {
            index = 3;
            break;
        }
        if (!l->vals[3]) return (chunked_list_pos){ .ptr = 0, .index = 0 };
        l = l->next;
    }
    return (chunked_list_pos){ .ptr = l, .index = index };
}
