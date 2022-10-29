#define BUFSZ 4096

void addr_taken_array_in_loop(int n, int fd_in, int fd_out)
{
  int i;
  for (i = 0; i < n; ++i) {
    char buf[BUFSZ];
    MYmyread(fd_in, buf, BUFSZ);
    MYmywrite(fd_out, buf, BUFSZ);
  }
}
