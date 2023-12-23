#include <stddef.h>

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

size_t strlen(struct chunked_list *l) {
    register size_t i;
    const unsigned long int *longword_ptr;
    unsigned long int longword, himagic, lomagic;

    himagic = 0x80808080L;
    lomagic = 0x01010101L;
    for (i=0;; l = l->next, i += 4) {
        longword_ptr = (unsigned long int *) l->vals;
        longword = *longword_ptr;
        if (((longword - lomagic) & ~longword & himagic) != 0) {
            const char *cp = (const char *) longword_ptr;

            if (cp[0] == 0) return i;
            if (cp[1] == 0) return i + 1;
            if (cp[2] == 0) return i + 2;
            if (cp[3] == 0) return i + 3;
        }
    }
}