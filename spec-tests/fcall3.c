unsigned foo(unsigned *m) {
  return (m[0] + m[3]) + (m[1] - m[2]);
}

unsigned bar(unsigned *m1, unsigned *m2) {
  return foo(m1) - foo(m2);
}
