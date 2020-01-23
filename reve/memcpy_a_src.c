int memcpy(int *dest, int *src, int size) {
   int i = 0;
   while(i < size) {
      dest[i] = src[i];
      i++;
   }
   return 1;
}

int main(int argc, char* argv[])
{
  return 0;
}
