void MYmyfoo(int*);

int addr_taken_simple(void)
{
  int ret;
  MYmyfoo(&ret);
  return ret;
}
