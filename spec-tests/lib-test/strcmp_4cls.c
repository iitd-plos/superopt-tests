#include <stddef.h>

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

int
strcmp (struct chunked_list *s1, struct chunked_list *s2)
{
  while (1) {
    if (!s1->vals[0] || s1->vals[0] != s2->vals[0])
      return (*(unsigned char*)(&s1->vals[0]) - *(unsigned char*)(&s2->vals[0]));

    if (!s1->vals[1] || s1->vals[1] != s2->vals[1])
      return (*(unsigned char*)(&s1->vals[1]) - *(unsigned char*)(&s2->vals[1]));
    
    if (!s1->vals[2] || s1->vals[2] != s2->vals[2])
      return (*(unsigned char*)(&s1->vals[2]) - *(unsigned char*)(&s2->vals[2]));
    
    if (!s1->vals[3] || s1->vals[3] != s2->vals[3])
      return (*(unsigned char*)(&s1->vals[3]) - *(unsigned char*)(&s2->vals[3]));
    
    s1 = s1->next;
    s2 = s2->next;
  }

  return 0;
}
