void fcall_taking_locals()
{
  char s[80];
  f1();
  MYmyscanf("%s", s);
  f2(s);
  f3();
}
