// safety check fails -- a[0] remains unmatched, need predicate which says a[0] _and_ a[1]...a[n] are safe
int findmax(int *a, int n) {

   int i = 1;
   int maxv = a[0];
   int result;

   while(i < n) {
      if(a[i] >= maxv) {
         maxv = a[i];
      }
      i++;
   }

   result = maxv;
   return result;
}

int main()
{
  return 0;
}
