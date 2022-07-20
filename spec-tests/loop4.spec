type i32 = BV32.
type arr = Map<i32, i32>.
type mat = Map<i32, arr>.

inline-fn foo_impl (i : i32) (n : i32) (r : i32) : i32 =
  if sgt(i, n) then
    r
  else
    foo_impl(add(i, i32(1)), n, add(r, i)).

fn foo (n : i32) : i32 =
  let m1 = set(mat(), i32(0), set(arr(), i32(1), foo_impl(i32(1), n, i32(0)))) in
        match get(m1, i32(0)) with
        | u => i32(0)
        | m2 => match get(m2, i32(1)) with
                       | u2 => i32(0)
                       | y => y.
