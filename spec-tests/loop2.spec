type i32 = BV32.
type arr = Map<i32, i32>.

inline-fn foo_impl (i : i32) (n : i32) (r : i32) : i32 =
  if sgt(i, n) then
    r
  else
    let t1 = set(set(arr(), i32(0), add(i, i32(1))), i32(1), add(r, i)) in
          foo_impl(match get(t1, i32(0)) with | u => i32(0) | y => y, n, match get(t1, i32(1)) with | u => i32(0) | y => y).

fn foo (n : i32) : i32 = foo_impl(i32(1), n, i32(0)).