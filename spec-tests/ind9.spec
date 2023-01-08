type i32 = BV32.
type array = Map<i32, i32>.
type list = Sum<Unit, Prod<i32, list>>.

inline-fn make_list_impl (arr : array) (i : i32) (l : list) : list =
  match get(arr, i) with
  | u => l
  | arr_i => let new_l = list(1, Prod<i32, list>(arr_i, l))
             in make_list_impl(arr, add(i, i32(1)), new_l).

fn make_list (arr : array) : list = make_list_impl(arr, i32(0), list(0, unit)).
