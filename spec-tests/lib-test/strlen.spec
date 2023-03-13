type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Sum[Unit, Prod[Char, CStr]]].

loopify inline fn strlen_impl (s : CStr) (len : Size) : Size =
  assuming is(s, 1) do
  match s with
  | u => Size{ 0 }
  | s2 => match s2 with
          | u => len
          | n => match n with
                | ch, s3 => strlen_impl(s3, add(len, Size{ 1 })).

fn strlen (s : CStr) : Size = strlen_impl(s, Size{ 0 }).
