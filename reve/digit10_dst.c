int digit10(unsigned n)
{
  unsigned r = 1;

  do {
    if (n < 10)    return r;
    if (n < 100)   return r+1;
    if (n < 1000)  return r+2;
    if (n < 10000) return r+3;
    
    n /= 10000;
    r += 4;
  } while (1);
}
int main(int argc, char* argv[])
{
  return digit10(argc);
}
