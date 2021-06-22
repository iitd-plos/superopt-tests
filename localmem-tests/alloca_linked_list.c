#include <alloca.h>
#include <stdio.h>

#define MAX 4096
int n;
int gdata[MAX];

int alloca_simple()
{
  if (n < 1) {
    return 0;
  }
  int* p = (int*)alloca(n*sizeof(n));
  p[0] = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 1; i < n; ++i) {
    p[i] = p[i-1] + i*i;
  }
  return p[0];
}

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
#pragma clang loop vectorize(disable) unroll(disable)
  for (i = 0; i < n; ++i) {
    Node* tmp = alloca(sizeof(Node));
    MYmyDBG();
    tmp->data = gdata[i];
    tmp->next = hd;
    hd = tmp;
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
