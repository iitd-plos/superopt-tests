#include"eqchecker_helper.h"
int main( void ) {
    struct {
	int node;
	int type;
    } lastglob[1] = { { 0   , 1  } };

    if (lastglob[0].node != 0 || lastglob[0].type != 1)
      Mymyabort ();
    exit (0);
}
