fn foo (x y : i32) -> i32 =
  let m = Map<i32, Map<i32, i32>>()[x <- Map<i32, i32>()[y <- bvadd(x, y)]] in
  match m[x] with
  | None => x
  | Some m1 => match m1[y] with
                          | None => y
                          | Some m2 => m2.
