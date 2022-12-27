// adapted from https://blog.llvm.org/2009/12/advanced-topics-in-redundant-load.html

struct S { int X, Y; };

/* load elimination with all path stores: pointer P has stores on all paths
 * reaching the load */
int load_elim_all_path_stores(struct S *P1, struct S *P2, int C) {
  struct S *P;
  switch (C) {
    case 1:
      P1->X = 4;
      P1->Y = 2;
      P = P1;
      break;
    case 2:
      P2->X = 23;
      P2->Y = 5;
      P = P2;
      break;
    case 3:
      P1->X = 8;
      P1->Y = 6;
      P = P1;
      break;
    case 4:
      P2->X = 93;
      P2->Y = 7;
      P = P2;
      break;
    case 5:
      P1->X = 32;
      P1->Y = 44;
      P = P1;
      break;
    case 6:
      P2->X = 1;
      P2->Y = 3;
      P = P2;
      break;
    default:
      P1->X = 4;
      P1->Y = 2;
      P = P1;
      break;
  }
  int acc = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C; ++i) {
    acc += (i&3);
  }
// works even if there are multiple intermediate loops
//#pragma clang loop vectorize(disable) unroll(disable)
//  for (int i = 0; i < C; ++i) {
//    acc += (i^3);
//  }
  return (P->X + P->Y) + acc;
}

/* load elimination with all path stores: pointer P has stores on all paths
 * reaching the load; the stored value is not a constant */
int load_elim_all_path_non_const_stores(struct S *P1, struct S *P2, int C, int D) {
  struct S *P;
  switch (C) {
    case 1:
      P1->X = D+4;
      P1->Y = D+2;
      P = P1;
      break;
    case 2:
      P2->X = D-23;
      P2->Y = D-5;
      P = P2;
      break;
    case 3:
      P1->X = D+8;
      P1->Y = D+6;
      P = P1;
      break;
    case 4:
      P2->X = D-93;
      P2->Y = D-7;
      P = P2;
      break;
    case 5:
      P1->X = D+32;
      P1->Y = D+44;
      P = P1;
      break;
    case 6:
      P2->X = D-1;
      P2->Y = D-3;
      P = P2;
      break;
    default:
      P1->X = D+4;
      P1->Y = D+2;
      P = P1;
      break;
  }
  int acc = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C; ++i) {
    acc += (i&3);
  }
// works even if there are multiple intermediate loops
//#pragma clang loop vectorize(disable) unroll(disable)
//  for (int i = 0; i < C; ++i) {
//    acc += (i^3);
//  }
  return (P->X + P->Y) + acc;
}
