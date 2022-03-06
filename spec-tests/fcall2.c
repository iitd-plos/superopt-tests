unsigned update_val(unsigned val) {
  return val - 10;
}

unsigned* opt_map(unsigned *opt) {
  if (opt) {
    *opt = update_val(*opt);
  }
  return opt;
}
