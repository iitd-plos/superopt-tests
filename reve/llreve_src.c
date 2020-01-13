void send(short *to, short* from, int count)
{
  if (count <= 0) {
    return;
  }
  do {
    *to = *from++;
  } while (--count > 0);
}

int *gto, *gfrom;
int main(int argc, char* argv[])
{
  send(gto, gfrom, argc);
  return 0;
}
