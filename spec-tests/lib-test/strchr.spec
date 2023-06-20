type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Unit, Prod[Char, CStr]].
type OptCStr = Sum[Unit, CStr].

loopify inline fn strchr_impl (s : CStr) (c : Char) : OptCStr =
  assuming not(is(s, 0)) do
  match s with
  | u => OptCStr{ 0, unit }
  | u => if eq(c, Char{ 0 }) then OptCStr{ 1, s } else OptCStr{ 0, unit }
  | n => match n with
         | ch, s2 => if eq(c, ch) then OptCStr{ 1, s } else strchr_impl(s2, c).

fn strchr (s : CStr) (c : Char) : OptCStr = strchr_impl(s, c).
