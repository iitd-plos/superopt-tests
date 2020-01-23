int memcpy(int *dest, int *src, int size) {
   int *start = src;
   while(src - start < size) {
      *dest = *src;
      dest++;
      src++;
   }
   return 1;
}
int main(int argc, char* argv[])
{
  return 0;
}
