void f1();
void MYmyscanf(char const* fmt, ...);
void f2(char const* s);
void f3(void);

void fcall_taking_locals()
{
  char s[80];
  f1();
  MYmyscanf("%s", s);
  f2(s);
  f3();
}
