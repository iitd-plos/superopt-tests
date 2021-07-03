int addr_taken_simple()
{
  int ret;
  MYmyfoo(&ret);
  return ret;
}

int addr_taken_array()
{
  char ret[8];
  MYmybar(ret);
  return MYmystrtol(ret, 0, 16);
}

#define BUFSZ 4096

void addr_taken_array_in_loop(int n, int fd_in, int fd_out)
{
  for (int i = 0; i < n; ++i) {
    char buf[BUFSZ];
    MYmyread(fd_in, buf, BUFSZ);
    MYmywrite(fd_out, buf, BUFSZ);
  }
}
