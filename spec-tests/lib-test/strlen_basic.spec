type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Prod[Char, CStr]].

loopify inline fn strlen_impl (s : CStr) (len : Size) : Size =
  match s with
  | u => len
  | n => match n with
         | ch, s2 => strlen_impl(s2, add(len, Size{ 1 })).

fn strlen (s : CStr) : Size = strlen_impl(s, Size{ 0 }).
