void MYmyfoo(int*);

int local_used_in_unreachable_loop(void)
{
  int ret = 0;
  while (ret) {
    MYmyfoo(&ret);
  }
  return ret;
}
