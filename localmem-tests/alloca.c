#include <alloca.h>

int alloca_0(int n)
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

int alloca_linked_list(int* a, int n)
{
  typedef struct lln {
    int data;
    struct lln* next;
  } Node;
  Node* hd = 0;

  int i = 0;
  for (i = 0; i < n; ++i) {
    Node* tmp = alloca(sizeof(Node));
    if (!tmp) return -1;
    tmp->data = a[i];
    tmp->next = hd;
    hd = tmp;
  }

  Node* tmp = hd;
  int ret = 0;
  while (tmp != 0) {
    ret += tmp->data;
    tmp = tmp->next;
  }

  return ret;
}

int printf(const char*, ...);

int main()
{
  int a[] = { 1, 2, 33, 4, 5 };
  int d = alloca_linked_list(a, sizeof(a)/sizeof(int));
  printf("d = %d", d);
  return 0;
}
