// harvest fail for reve_dst:send
void send(short *to, short* from, int count)
{
  if (count <= 0) {
    return;
  }
  do {
    *to = *from++;
  } while (--count > 0);
}

int main(int argc, char* argv[])
{
  return 0;
}
