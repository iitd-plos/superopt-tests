int a[20];
int foo(int a);

void fcall10_with_memaccess(int i)
{
  a[0] = 0;
  foo(a[i]); //1
  a[1] = 1;
  foo(a[i]); //2
  a[2] = 1;
  foo(a[i]); //3
  a[3] = 1;
  foo(a[i]); //4
  a[4] = 1;
  foo(a[i]); //5
  a[5] = 1;
  foo(a[i]); //6
  a[6] = 1;
  foo(a[i]); //7
  a[7] = 1;
  foo(a[i]); //8
  a[8] = 1;
  foo(a[i]); //9
  a[9] = 1;
  foo(a[i]); //10
  a[10] = 1;
}
