type i32, arr = BV32, Map<i32, i32>.

fn foo (x : arr) : i32 =
  match get(x, i32(0)) with
  | u => i32(45)
  | x0 => match get(x, i32(1)) with
                | u2 => i32(12)
                | x1 => add(x0, x1).
