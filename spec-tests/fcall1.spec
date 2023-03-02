type i32 = BV32.

fn foo (x : i32) : i32 = sub(x, i32{ 5 }).

fn bar (x : i32) : i32 = let y = foo(x) in add(y, i32{ 5 }).