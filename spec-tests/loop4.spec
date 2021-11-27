inline fn foo_impl (i n r : i32) -> i32 =
  if bvsgt(i, n) then r
                      else foo_impl(bvadd(i, i32(1)), n, bvadd(r, i)).

fn foo (n : i32) -> i32 =
let m1 = Map<i32, Map<i32, i32>>()[i32(0) <- Map<i32, i32>()[i32(1) <- foo_impl(i32(1), n, i32(0))]]
in match m1[i32(0)] with
    | None => i32(0)
    | Some m2 => match m2[i32(1)] with
                            | None => i32(0)
                            | Some y => y.
