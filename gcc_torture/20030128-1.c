#include"eqchecker_helper.h"
unsigned char x = 50;
volatile short y = -5;

int main ()
{
  x /= y;
  if (x != (unsigned char) -10)
    Mymyabort ();
  exit (0);
}
