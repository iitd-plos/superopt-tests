#include <unistd.h>

// vla inside for loop
void vlau_0(unsigned arr[], int n, int fd_in, int fd_out)
{
  if (n <= 0) {
    return;
  }
#pragma clang loop unroll(enable)
  for (int i = 0; i < n; ++i) {
    unsigned count = arr[i];
    char t[count];
    read(fd_in, t, count);
    write(fd_out, t, count);
  }
}

#define MAX_SIZE 4096
void atu_0(int n, int fd_in, int fd_out)
{
#pragma clang loop unroll(enable)
  for (int i = 0; i < n; ++i) {
    char t[MAX_SIZE];
    read(fd_in, t, MAX_SIZE);
    write(fd_out, t, MAX_SIZE);
  }
}
