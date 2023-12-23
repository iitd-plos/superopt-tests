struct chunked_list {
  char vals[4];
  struct chunked_list *next;
};

struct chunked_list_ptr {
  struct chunked_list *list;
  unsigned index;
};

struct chunked_list_ptr strchr(struct chunked_list *l, int c) {
  register char ch;
  register unsigned index;

  ch = c;
  for (;;) {
    if (l->vals[0] == ch) return (struct chunked_list_ptr){ l, 0 };
                    if (!l->vals[0]) return (struct chunked_list_ptr){ 0, 0 };
    
    if (l->vals[1] == ch) return (struct chunked_list_ptr){ l, 1 }
                if (!l->vals[1]) return (struct chunked_list_ptr){ 0, 0 };

    if (l->vals[2] == ch) return (struct chunked_list_ptr){ l, 2 };
                if (!l->vals[2]) return (struct chunked_list_ptr){ 0, 0 };

    if (l->vals[3] == ch) return (struct chunked_list_ptr){ l, 3 };
                if (!l->vals[3]) return (struct chunked_list_ptr){ 0, 0 };

    l = l->next;
  }
  return { 0, 0 };
}
