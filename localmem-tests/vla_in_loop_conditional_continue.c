int vla_in_loop_conditional_continue(int n)
{
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    int r = MYmyInit(t, i);
    if (r < 0)
      continue;
    ret += t[i-1];
  }
  return ret;
}
