#include"eqchecker_helper.h"
int
main (int argc, char **argv)
{
  int size = 10;

  {
    int retframe_block()
      {
        return size + 5;
      }

  if (retframe_block() != 15)
      Mymyabort ();
  exit (0);

  }
}
