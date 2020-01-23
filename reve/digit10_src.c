int digit10(unsigned n)
{
  unsigned r = 0;
  do {
    n /= 10;
    r++;
  } while (n > 0);
  return r;
}
int main(int argc, char* argv[])
{
  return digit10(argc);
}
