type map_t = Map<i32, Map<i32, i32>>.

inline fn foo_impl2 (arr : map_t) (n m : i32) (i j : i32) (x : i32) -> i32 =
  if bvuge(j, m)
    then x
  else
    let val = match arr[i] with
                    | None => i32(0)
                    | Some arr_i => match arr_i[j] with
                                                  | None => i32(0)
                                                  | Some arr_ij => arr_ij in
    foo_impl2(arr, n, m, i, bvadd(j, i32(1)), bvadd(x, val)).

inline fn foo_impl (arr : map_t) (n m : i32) (i : i32) (x : i32) -> i32 =
  if bvuge(i, n)
    then x
  else
    let val = foo_impl2(arr, n, m, i, i32(0), x) in
      foo_impl(arr, n, m, bvadd(i, i32(1)), val).

fn foo (arr : map_t) (n m : i32) -> i32 = foo_impl(arr, n, m, i32(0), i32(0)).

fn bar (arr1 arr2 : map_t) (n m : i32) -> i32 = bvadd(foo(arr1, n, m), foo(arr2, n, m)).