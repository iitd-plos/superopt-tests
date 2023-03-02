type i32, list = BV32, Sum[Unit, Prod[i32, list]].

fn foo : list = list{ 1, Prod[i32, list]{ i32{ 42 }, list{ 0, unit } } }.
