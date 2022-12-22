void MYmyfoo(int*);
void MYmybar(long long*);

int addr_taken_simple(void)
{
  int ret;
  MYmyfoo(&ret);
  return ret;
}
