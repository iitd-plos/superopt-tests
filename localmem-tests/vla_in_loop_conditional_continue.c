int vla_in_loop_conditional_continue(const char* s, int n)
{
  if (n <= 0) {
    return 0;
  }
  int ret = 0;
  int i = 1;
  while (i < n) {
    char t[i];
    int r = MYmyInit(t, i);
    if (r < 0)
      continue;
    ret += t[i-1];
    ++i;
  }
  return ret;
}
