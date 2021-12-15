const int cts[] = { 0x66, 0x65, 0x67, 0x60 };

int rodata(int n)
{
  const char* ini = "ZXZZ";
  int ret = 0;
  ret += ini[0];
  ret += ini[1];
  ret += ini[2];
  ret += ini[3];
  MYmyprintf("Scanning %d chars", n);
  char t[n];
  const char zz[] = "0123456789";
  MYmyscanf("%s",t);
  for (int i = 0; i < n; ++i)
    ret += t[i] ^ zz[i%(sizeof zz)];
  ret = ret + cts[n%((sizeof cts)/sizeof(cts[0]))];
  MYmyprintf("Returning %d", ret);
  return ret;
}
