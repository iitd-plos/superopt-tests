#include"eqchecker_helper.h"
/* Verify that flexible arrays can be initialized from STRING_CST
   constructors. */

/* Baselines.  */
struct {
  char a1c;
  char *a1p;
} a1 = {
  '4',
  "62"
};

struct {
  char a2c;
  char a2p[2];
} a2 = {
  'v',
  "cq"
};

/* The tests.  */
struct {
  char a3c;
  char a3p[];
} a3 = {
  'o',
  "wx"
};

struct {
  char a4c;
  char a4p[];
} a4 = {
  '9',
  { 'e', 'b' }
};

main()
{
  if (a1.a1c != '4')
    Mymyabort();
  if (a1.a1p[0] != '6')
    Mymyabort();
  if (a1.a1p[1] != '2')
    Mymyabort();
  if (a1.a1p[2] != '\0')
    Mymyabort();

  if (a2.a2c != 'v')
    Mymyabort();
  if (a2.a2p[0] != 'c')
    Mymyabort();
  if (a2.a2p[1] != 'q')
    Mymyabort();

  if (a3.a3c != 'o')
    Mymyabort();
  if (a3.a3p[0] != 'w')
    Mymyabort();
  if (a3.a3p[1] != 'x')
    Mymyabort();

  if (a4.a4c != '9')
    Mymyabort();
  if (a4.a4p[0] != 'e')
    Mymyabort();
  if (a4.a4p[1] != 'b')
    Mymyabort();

  return 0;
}
