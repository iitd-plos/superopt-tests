// vla inside for loop -- simplified
int vla_in_loop(int n)
{
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    MYmyInit(t, i);
    ret += t[i-1];
  }
  return ret;
}