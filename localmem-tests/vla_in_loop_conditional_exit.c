int vla_in_loop_conditional_exit(int n)
{
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    int r = MYmyInit(t, i);
    if (r < 0)
      break;
    ret += t[i-1];
  }
  return ret;
}
