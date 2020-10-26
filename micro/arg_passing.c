#include <stdarg.h>

unsigned arg_passing(char a, char b, unsigned c)
{
  return (unsigned)a + (unsigned)b + c;
}

// XXX return value cannot fit into EAX and we don't model any other behavior
unsigned long long arg_passing2(char a, char b, unsigned long long c)
{
  return (unsigned long long)a + (unsigned long long)b + c;
}

int main(int argc, char* argv[])
{
  return 0;
}
