 fn foo (x : Map<i32, i32>) -> i32 =
   match x[i32(0)] with
   | None => i32(0)
   | Some x0 => match x[i32(1)] with
                          | None => i32(0)
                          | Some x1 => bvadd(x0, x1).
