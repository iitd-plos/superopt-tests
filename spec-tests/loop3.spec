inline fn foo_impl (i n r : i32) -> i32 =
  if bvsgt(i, n) then r
                      else let t1 = Prod<first second : i32>(bvadd(i, i32(1)), bvadd(r, i)) in
                                  foo_impl(t1['first'], n, t1['second']).

fn foo (n : i32) -> i32 = let t1 = Sum<f s : i32>('s', foo_impl(i32(1), n, i32(0))) in
                                      match t1 with
                                      | 'f' f => n
                                      | 's' s => s.
