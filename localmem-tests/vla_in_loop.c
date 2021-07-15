// vla inside for loop -- simplified
int vla_in_loop(const char* s)
{
  int n = MYmystrlen(s);
  if (n <= 0) {
    return 0;
  }
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    MYmyInit(t, i);
    ret += t[0] + t[i-1];
  }
  return ret;
}
