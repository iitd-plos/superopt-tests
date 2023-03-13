type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Sum[Unit, Prod[Char, CStr]]].
type LtEqGt = Sum[Unit, Unit, Unit].

loopify inline fn strcmp_impl (s1 : CStr) (s2 : CStr) : LtEqGt =
  assuming is(s1, 1) do
  match s1 with
  | u1 => LtEqGt{ 0, unit }
  | s1a => match s1a with
           | u1 => (assuming is(s2, 1) do
                    match s2 with
                    | u2 => LtEqGt{ 0, unit }
                    | s2a => (match s2a with
                             | u2 => LtEqGt{ 1, unit }
                             | n2 => LtEqGt{ 0, unit }))
           | n1 => (match n1 with
                    | ch1, s1_tail => (assuming is(s2, 1) do
                                       match s2 with
                                       | u1 => LtEqGt{ 0, unit }
                                       | s2a => match s2a with
                                                | u2 => LtEqGt{ 2, unit }
                                                | n2 => (match n2 with
                                                         | ch2, s2_tail => if ult(ch1, ch2) then LtEqGt{ 0, unit }
                                                                           else if ugt(ch1, ch2) then LtEqGt{ 2, unit }
                                                                           else strcmp_impl(s1_tail, s2_tail)))).

fn strcmp (s1 : CStr) (s2 : CStr) : LtEqGt = strcmp_impl(s1, s2).
