unsigned sum_tree(unsigned* t, unsigned n, unsigned i) {
    if (i >= n) return 0;
    unsigned l = sum_tree(t, n, 2*i+1);
    unsigned x = 2 * t[i];
    unsigned r = sum_tree(t, n, 2*i+2);
    return x + l + r;
}