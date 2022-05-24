int a[20];
int foo();

void fcall10_with_memaccess()
{
  a[0] = 0;
  foo(); //1
  a[1] = 1;
  foo(); //2
  a[2] = 1;
  foo(); //3
  a[3] = 1;
  foo(); //4
  a[4] = 1;
  foo(); //5
  a[5] = 1;
  foo(); //6
  a[6] = 1;
  foo(); //7
  a[7] = 1;
  foo(); //8
  a[8] = 1;
  foo(); //9
  a[9] = 1;
  foo(); //10
  a[10] = 1;
}
