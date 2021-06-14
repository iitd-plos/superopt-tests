#include <alloca.h>
#include <stdio.h>

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
#pragma clang loop vectorize(disable) unroll(disable)
  for (i = 0; i < n; ++i) {
    Node* tmp = alloca(sizeof(Node));
    MYmyDBG();
    tmp->data = a[i];
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

//void alloca_weird3(int n)
//{
//  char *arr[n];
//  for (int i = 0; i < n; ++i) {
//    int v[2];
//    scanf("%d %d", &v[0], &v[1]);
//    int sz = v[0]+v[1]+1;
//    if (sz <= 0)
//      continue;
//    char *va = alloca(sz);
//    for (int j = 0; j < sz; j++)
//      va[j] = v[j];
//    arr[i] = va;
//  }
//  for (int i = 0; i < n; ++i) {
//    printf("%d: %s", i, arr[i]);
//  }
//}

int printf(const char*, ...);

int main()
{
  int a[] = { 1, 2, 33, 4, 5 };
  int d = alloca_linked_list(a, sizeof(a)/sizeof(int));
  printf("d = %d", d);
  return 0;
}
