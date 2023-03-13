struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

struct chunked_list* strchr(struct chunked_list *l, int c, unsigned *index) {
    register char ch;

    ch = c;
    for (;; l = l->next) {
        if (l->vals[0] == ch) {
            *index = 0;
            break;
        }
        if (!l->vals[0]) return 0;

        if (l->vals[1] == ch) {
            *index = 1;
            break;
        }
        if (!l->vals[1]) return 0;

        if(l->vals[2] == ch) {
            *index = 2;
            break;
        }
        if (!l->vals[2]) return 0;

        if (l->vals[3] == ch) {
            *index = 3;
            break;
        }
        if (!l->vals[3]) return 0;
    }
    return l;
}
