#include "eqchecker_helper.h"

int read_int()
{
  int ret;
  scanf("%d", &ret);
  return ret;
}

int read_str()
{
  char ret[8];
  scanf("%s", ret);
  return MYmystrtol(ret, NULL, 16);
}

int main(int argc, char* argv[])
{
  int i = read_int();
  int j = read_str();
  return (unsigned char)(i+j);
}

