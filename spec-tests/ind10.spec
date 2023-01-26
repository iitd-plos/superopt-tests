type i32, list = BV32, Sum<Unit, Prod<i32, list>>.

opaque fn malloc : Unit.

fn make_node (val : i32) : list =
    let u = malloc() in
    list(1, Prod<i32, list>(val, list(0, unit))).
