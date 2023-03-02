type i32, arr, mat = BV32, Map[i32, i32], Map[i32, arr].

fn foo (x : i32) (y : i32) : i32 = 
  let m = set(mat{ }, x, set(arr{ }, y, add(x, y))) in
    match get(m, x) with
    | u => x
    | m1 => match get(m1, y) with
                    | u2 => y
                    | m2 => m2.
