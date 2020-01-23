// using Duff's device (https://en.wikipedia.org/wiki/Duff%27s_device)
// harvest fails on clang's output which creates a jump of the form [rodata_addr+esi*4]
void send(short* to, short* from, int count)
{
  if (count <= 0) {
    return;
  }
  unsigned n = (count+7)/8;
  switch (count % 8) {
    case 0: do { *to = *from++;
    case 7:      *to = *from++;
    case 6:      *to = *from++;
    case 5:      *to = *from++;
    case 4:      *to = *from++;
    case 3:      *to = *from++;
    case 2:      *to = *from++;
    case 1:      *to = *from++;
            } while (--n > 0);
  }
}

int main(int argc, char* argv[])
{
  return 0;
}
