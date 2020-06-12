#include"eqchecker_helper.h"
/* PR 15454 */

void Mymyabort ();
int main () {
        int foo;
        int bar (void)
        {
                int baz = 0;
                if (foo!=45)
                        baz = foo;
                return baz;
        }
        foo = 1;
        if (!bar ())
                Mymyabort ();
        return 0;
}
