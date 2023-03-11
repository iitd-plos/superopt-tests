void path_enum_1(int i, int j, int* arr)
{
  int m = arr[(i+j)>>1];
   while (1) {
     while (1) {
       if (i > j) break;
       int n = arr[i] - m;
       if (n == 0) {  ++i; continue; };
       if (n > 0) break;
       ++i;
     }
     while (1) {
       if (i > j) break;
       int n = arr[i] - m;
       if (n == 0) { --j; continue; };
       if (n < 0) break;
       --j;
     }
     if (i > j) break;
     int tmp = arr[i];
     arr[i] = arr[j];
     arr[j] = tmp;
   }
}
