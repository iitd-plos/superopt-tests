
void MYmybaz(int* p);
int addr_taken_conditional(int* p)
{
  int x;
  if (!p) p = &x;
  MYmybaz(p);
  return *p;
}
