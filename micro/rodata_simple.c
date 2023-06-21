const char hw[] = "hello world";

int MYmystrlen(char const* p);

int rodata_simple(const char *s)
{
  const char* p = s != 0 ? s : hw;
  int ret = 0;
  for (int i = 0; i < MYmystrlen(p); ++i) {
    ret += *p;
  }
  return ret;
}
