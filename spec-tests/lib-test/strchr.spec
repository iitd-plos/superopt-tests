type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Sum[Unit, Prod[Char, CStr]]].

inline fn is_zero_char (c : Char) : Bool = eq(c, Char{ 0 }).

inline fn null_cstr : CStr = CStr{ 0, unit }.

loopify inline fn strchr_impl (s : CStr) (c : Char) : CStr =
  assuming is(s, 1) do
  match s with
  | u => null_cstr()
  | s2 => match s2 with
          | u => if is_zero_char(c) then s else null_cstr()
          | n => match n with
                 | ch, s3 => if eq(c, ch)
                             then s
                             else strchr_impl(s3, c).

fn strchr (s : CStr) (c : Char) : CStr = strchr_impl(s, c).
