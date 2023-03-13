#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

int
strcmp (struct list *s1, struct list *s2)
{
  while (s1->ch && s1->ch == s2->ch)
    s1 = s1->next, s2 = s2->next;
  return (*(unsigned char*)(&s1->ch) - *(unsigned char*)(&s2->ch));
}