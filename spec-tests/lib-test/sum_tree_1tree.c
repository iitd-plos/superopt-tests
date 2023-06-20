typedef struct tree {
    unsigned val;
    struct tree *left, *right;
} tree;

unsigned sum_tree(tree *t) {
    if (!t) { return 0; }
    unsigned l = sum_tree(t->left);
    unsigned x = 2 * t->val;
    unsigned r = sum_tree(t->right);
    return x + l + r;
}
