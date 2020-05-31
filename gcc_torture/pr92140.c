#include"eqchecker_helper.h"
/* PR target/92140 */

char c;
int v;

__attribute__((noipa)) void f1 (void) { v += c != 0; }
__attribute__((noipa)) void f2 (void) { v -= c != 0; }
__attribute__((noipa)) void f3 (void) { v += c == 0; }
__attribute__((noipa)) void f4 (void) { v -= c == 0; }
__attribute__((noipa)) void f5 (void) { v += (c != 0) - 26; }
__attribute__((noipa)) void f6 (void) { v -= (c != 0) - 26; }
__attribute__((noipa)) void f7 (void) { v += (c == 0) - 26; }
__attribute__((noipa)) void f8 (void) { v -= (c == 0) - 26; }
__attribute__((noipa)) void f9 (void) { v += (c != 0) + 42; }
__attribute__((noipa)) void f10 (void) { v -= (c != 0) + 42; }
__attribute__((noipa)) void f11 (void) { v += (c == 0) + 42; }
__attribute__((noipa)) void f12 (void) { v -= (c == 0) + 42; }
__attribute__((noipa)) void f13 (int z) { v += (c == 0) + z; }
__attribute__((noipa)) void f14 (int z) { v -= (c == 0) + z; }
__attribute__((noipa)) unsigned int f15 (unsigned int n) { return n ? 2 : 1; }

int
main ()
{
  int i;
  for (i = 0; i < 2; i++)
    {
      v = 15;
      if (i == 1)
	c = 37;
      f1 ();
      if (v != 15 + i)
	Mymyabort ();
      f2 ();
      if (v != 15)
	Mymyabort ();
      f3 ();
      if (v != 16 - i)
	Mymyabort ();
      f4 ();
      if (v != 15)
	Mymyabort ();
      f5 ();
      if (v != 15 + i - 26)
	Mymyabort ();
      f6 ();
      if (v != 15)
	Mymyabort ();
      f7 ();
      if (v != 16 - i - 26)
	Mymyabort ();
      f8 ();
      if (v != 15)
	Mymyabort ();
      f9 ();
      if (v != 15 + i + 42)
	Mymyabort ();
      f10 ();
      if (v != 15)
	Mymyabort ();
      f11 ();
      if (v != 16 - i + 42)
	Mymyabort ();
      f12 ();
      if (v != 15)
	Mymyabort ();
      f13 (173);
      if (v != 16 - i + 173)
	Mymyabort ();
      f14 (173);
      if (v != 15)
	Mymyabort ();
      f13 (-35);
      if (v != 16 - i - 35)
	Mymyabort ();
      f14 (-35);
      if (v != 15)
	Mymyabort ();
    }
  if (f15 (0) != 1 || f15 (1) != 2 || f15 (371) != 2)
    Mymyabort ();
  return 0;
}
