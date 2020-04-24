#include <stdbool.h>
#include <stdlib.h>
struct foo { int data; struct foo* next; };
int dummy1, dummy2, dummy3;
int g_int;
void *baz(size_t);

bool basedon()
{
  dummy1 = 0;
  dummy2++;
  dummy3--;
  struct foo* bar = (struct foo*)MYmymalloc(sizeof(struct foo));
  int ret = g_int;
  bar->next = NULL;          // next is not the first field
  return ret;
}


int main()
{
  return 0;
}
