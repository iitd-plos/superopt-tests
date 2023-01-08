type i32, list = BV32, Sum<Unit, Prod<i32, list>>.

fn make_list (val : i32) : list = list(1, Prod<i32, list>(val, list(0, unit))).
