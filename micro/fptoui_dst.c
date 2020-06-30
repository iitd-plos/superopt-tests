#include <stdbool.h>
#include <stdlib.h>
struct foo { int data; struct foo* next; };
int dummy1, dummy2, dummy3;
int g_int;

#pragma STDC FENV_ACCESS ON

unsigned fptrunc(float x)
{
  return (unsigned)x;
}


int main()
{
  return 0;
}
