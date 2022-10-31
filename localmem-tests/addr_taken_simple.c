void MYmyfoo(int*);
void MYmybar(long long*);

int addr_taken_simple(void)
{
  int ret;
  long long ret2;
  MYmyfoo(&ret);
  MYmybar(&ret2);
  return ret + ret2;
}
