typedef struct tree {
  unsigned val;
  struct tree *left, *right;
} tree;

tree* foo(tree* t) {
  return t ? (t->left ? t->left : t->right) : t;
}
