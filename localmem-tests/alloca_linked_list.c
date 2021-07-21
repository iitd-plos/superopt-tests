#include <alloca.h>

#define MAX 4096
int n;
int gdata[MAX];

int alloca_linked_list()
{
  typedef struct lln {
    int data;
    struct lln* next;
  } Node;
  if (n > MAX)
    return 0;

  Node* hd = 0;

  int i = 0;
  for (i = 0; i < n; ++i) {
    Node* tmp = alloca(sizeof(Node));
    MYmyDBG();
    tmp->data = gdata[i];
    tmp->next = hd; hd = tmp;
  }

  Node* tmp = hd;
  int ret = 0;
  while (tmp != 0) {
    MYmyDBG();
    ret += tmp->data;
    tmp = tmp->next;
  }
  return ret;
}
