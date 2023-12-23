type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Unit, Prod[Char, CStr]].

loopify inline fn strlen_impl (s : CStr) (len : Size) : Size =
  assuming not(is(s, 0)) do
  match s with
  | u => Size{ 0 }
  | u => len
  | n => match n with
         | ch, s2 => strlen_impl(s2, add(len, Size{ 1 })).

fn strlen (s : CStr) : Size = strlen_impl(s, Size{ 0 }).
