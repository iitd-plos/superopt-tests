type i32, arr = BV32, Map<i32, i32>.

fn foo (m : arr) : i32 =
  let m0 = match get(m, i32(0)) with | u => i32(0) | val => val in
  let m1 = match get(m, i32(1)) with | u2 => i32(0) | val => val in
  let m2 = match get(m, i32(2)) with | u3 => i32(0) | val => val in
  let m3 = match get(m, i32(3)) with | u4 => i32(0) | val => val in
    add(add(m0, m3), sub(m1, m2)).

fn bar (m1 : arr) (m2 : arr) : i32 =
  let fi = foo(m1) in
  let se = foo(m2) in
    sub(fi, se).