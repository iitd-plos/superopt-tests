fn foo (x : i32) -> i32 = bvsub(x, i32(5)).

fn bar (x : i32) -> i32 = let y = foo(x) in bvadd(y, i32(5)).