void MYmyfoo(int*);

int local_used_on_unreachable_branch(void)
{
  int ret = 0;
  if (ret) {
    MYmyfoo(&ret);
  }
  return ret;
}
