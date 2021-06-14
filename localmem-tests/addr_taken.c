#include <stdio.h>
//#include "eqchecker_helper.h"

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

#define BUFSZ 4096

int read_and_write(int n, int fd_in, int fd_out)
{
  for (int i = 0; i < n; ++i) {
    char buf[BUFSZ];
    read(fd_in, buf, BUFSZ);
    write(fd_out, buf, BUFSZ);
  }
}

int main(int argc, char* argv[])
{
  int i = read_int();
  int j = read_str();
  return (unsigned char)(i+j);
}

