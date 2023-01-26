type i32, arr = BV32, Map<i32, i32>.

loopify inline fn foo_impl (i : i32) (n : i32) (m : arr) : arr =
  if uge(i, n) then
    m
  else
    foo_impl(add(i, i32(1)), n, set(m, i, i)).

fn foo (n : i32) : arr = foo_impl(i32(0), n, arr()).
