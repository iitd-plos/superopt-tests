type map_t = Map<i32, i32>.

win foo_w = LEWindow<x y : i32, z : i64>.

fn foo (arr : map_t) -> map_t = 
  foo_w(arr, i32(0), i32(0), i32(1), i64(2)).