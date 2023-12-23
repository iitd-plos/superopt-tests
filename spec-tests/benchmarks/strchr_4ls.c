struct list {
  char ch;
  struct list *next;
};

struct list *strchr(struct list *l, int c) {
  register char ch;

  ch = c;
  for (;;) {
    if (l->ch == ch) break;
              if (!l->ch) return 0;
                    l = l->next;

    if (l->ch == ch) break;
              if (!l->ch) return 0;
                    l = l->next;

    if (l->ch == ch) break;
              if (!l->ch) return 0;
                    l = l->next;

    if (l->ch == ch) break;
              if (!l->ch) return 0;
                    l = l->next;
  }
  return l;
}
