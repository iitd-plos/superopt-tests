type i32, list = BV32, Sum[Unit, Prod[i32, list]].

loopify inline fn make_list_impl (n : i32) (i : i32) (l : list) : list =
    if uge(i, n) then
        l
    else
        let new_l = list{ 1, Prod[i32, list]{ i, l } } in
            make_list_impl(n, add(i, i32{ 1 }), new_l).

fn make_list (n : i32) : list = make_list_impl(n, i32{ 0 }, list{ 0, unit }).
