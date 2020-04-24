#include <stdbool.h>
#include <stdlib.h>
struct foo { int data; struct foo* next; };
int dummy1, dummy2, dummy3;
int g_int;

int basedon()
{
  dummy1 = 0;
  dummy2++;
  dummy3--;
  struct foo* bar = (struct foo*)MYmymalloc(sizeof(struct foo));
  bar->next = NULL;          // next is not the first field
  return g_int;       // this can be ordered before previous statement
}


int main()
{
  return 0;
}
