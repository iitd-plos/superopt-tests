fn foo (m : Map<i32, i32>) -> i32 =
  let m0 = match m[i32(0)] with | None => i32(0) | Some val => val in
  let m1 = match m[i32(1)] with | None => i32(0) | Some val => val in
  let m2 = match m[i32(2)] with | None => i32(0) | Some val => val in
  let m3 = match m[i32(3)] with | None => i32(0) | Some val => val in
    bvadd(bvadd(m0, m3), bvsub(m1, m2)).

fn bar (m1 m2 : Map<i32, i32>) -> i32 =
  let fi = foo(m1) in
  let se = foo(m2) in
    bvsub(fi, se).