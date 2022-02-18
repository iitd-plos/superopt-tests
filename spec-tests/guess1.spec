inline fn foo_impl (i n : i32) (m : Map<i32, i32>) -> Map<i32, i32> =
  if bvuge(i, n) then m
                      else foo_impl(bvadd(i, i32(1)), n, m[i <- i]).

fn foo (n : i32) -> Map<i32, i32> = foo_impl(i32(0), n, Map<i32, i32>()).
