type i32, opt = BV32, Sum<Unit, i32>.

fn foo (x : i32) : i32 =
  let t1 = opt(1, x) in
    match t1 with
    | u => i32(0)
    | y => add(y, i32(3)).
