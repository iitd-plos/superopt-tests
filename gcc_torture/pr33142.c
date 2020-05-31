#include"eqchecker_helper.h"
int abs(int j);
extern void Mymyabort(void);

__attribute__((noinline)) int lisp_atan2(long dy, long dx) {
    if (dx <= 0)
        if (dy > 0)
            return abs(dx) <= abs(dy);
    return 0;
}

int main() {   
    volatile long dy = 63, dx = -77;
    if (lisp_atan2(dy, dx))
        Mymyabort();
    return 0;
}
