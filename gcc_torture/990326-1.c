#include"eqchecker_helper.h"
struct a {
	char a, b;
	short c;
};

int
a1()
{
	static struct a x = { 1, 2, ~1 }, y = { 65, 2, ~2 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
a2()
{
	static struct a x = { 1, 66, ~1 }, y = { 1, 2, ~2 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
a3()
{
	static struct a x = { 9, 66, ~1 }, y = { 33, 18, ~2 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

struct b {
	int c;
	short b, a;
};

int
b1()
{
	static struct b x = { ~1, 2, 1 }, y = { ~2, 2, 65 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
b2()
{
	static struct b x = { ~1, 66, 1 }, y = { ~2, 2, 1 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
b3()
{
	static struct b x = { ~1, 66, 9 }, y = { ~2, 18, 33 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

struct c {
	unsigned int c:4, b:14, a:14;
} __attribute__ ((aligned));

int
c1()
{
	static struct c x = { ~1, 2, 1 }, y = { ~2, 2, 65 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
c2()
{
	static struct c x = { ~1, 66, 1 }, y = { ~2, 2, 1 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
c3()
{
	static struct c x = { ~1, 66, 9 }, y = { ~2, 18, 33 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

struct d {
	unsigned int a:14, b:14, c:4;
} __attribute__ ((aligned));

int
d1()
{
	static struct d x = { 1, 2, ~1 }, y = { 65, 2, ~2 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
d2()
{
	static struct d x = { 1, 66, ~1 }, y = { 1, 2, ~2 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
d3()
{
	static struct d x = { 9, 66, ~1 }, y = { 33, 18, ~2 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

struct e {
	int c:4, b:14, a:14;
} __attribute__ ((aligned));

int
e1()
{
	static struct e x = { ~1, -2, -65 }, y = { ~2, -2, -1 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
e2()
{
	static struct e x = { ~1, -2, -1 }, y = { ~2, -66, -1 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
e3()
{
	static struct e x = { ~1, -18, -33 }, y = { ~2, -66, -9 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

int
e4()
{
	static struct e x = { -1, -1, 0 };

	return x.a == 0 && x.b & 0x2000;
}

struct f {
	int a:14, b:14, c:4;
} __attribute__ ((aligned));

int
f1()
{
	static struct f x = { -65, -2, ~1 }, y = { -1, -2, ~2 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
f2()
{
	static struct f x = { -1, -2, ~1 }, y = { -1, -66, ~2 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
f3()
{
	static struct f x = { -33, -18, ~1 }, y = { -9, -66, ~2 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

int
f4()
{
	static struct f x = { 0, -1, -1 };

	return x.a == 0 && x.b & 0x2000;
}

struct gx {
	int c:4, b:14, a:14;
} __attribute__ ((aligned));
struct gy {
	int b:14, a:14, c:4;
} __attribute__ ((aligned));

int
g1()
{
	static struct gx x = { ~1, -2, -65 };
	static struct gy y = { -2, -1, ~2 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
g2()
{
	static struct gx x = { ~1, -2, -1 };
	static struct gy y = { -66, -1, ~2 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
g3()
{
	static struct gx x = { ~1, -18, -33 };
	static struct gy y = { -66, -9, ~2 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

int
g4()
{
	static struct gx x = { ~1, 0x0020, 0x0010 };
	static struct gy y = { 0x0200, 0x0100, ~2 };

	return ((x.a & 0x00f0) == (y.a & 0x0f00) &&
		(x.b & 0x00f0) == (y.b & 0x0f00));
}

int
g5()
{
	static struct gx x = { ~1, 0x0200, 0x0100 };
	static struct gy y = { 0x0020, 0x0010, ~2 };

	return ((x.a & 0x0f00) == (y.a & 0x00f0) &&
		(x.b & 0x0f00) == (y.b & 0x00f0));
}

int
g6()
{
	static struct gx x = { ~1, 0xfe20, 0xfd10 };
	static struct gy y = { 0xc22f, 0xc11f, ~2 };

	return ((x.a & 0x03ff) == (y.a & 0x3ff0) &&
		(x.b & 0x03ff) == (y.b & 0x3ff0));
}

int
g7()
{
	static struct gx x = { ~1, 0xc22f, 0xc11f };
	static struct gy y = { 0xfe20, 0xfd10, ~2 };

	return ((x.a & 0x3ff0) == (y.a & 0x03ff) &&
		(x.b & 0x3ff0) == (y.b & 0x03ff));
}

struct hx {
	int a:14, b:14, c:4;
} __attribute__ ((aligned));
struct hy {
	int c:4, a:14, b:14;
} __attribute__ ((aligned));

int
h1()
{
	static struct hx x = { -65, -2, ~1 };
	static struct hy y = { ~2, -1, -2 };

	return (x.a == (y.a & ~64) && x.b == y.b);
}

int
h2()
{
	static struct hx x = { -1, -2, ~1 };
	static struct hy y = { ~2, -1, -66 };

	return (x.a == y.a && (x.b & ~64) == y.b);
}

int
h3()
{
	static struct hx x = { -33, -18, ~1 };
	static struct hy y = { ~2, -9, -66 };

	return ((x.a & ~8) == (y.a & ~32) && (x.b & ~64) == (y.b & ~16));
}

int
h4()
{
	static struct hx x = { 0x0010, 0x0020, ~1 };
	static struct hy y = { ~2, 0x0100, 0x0200 };

	return ((x.a & 0x00f0) == (y.a & 0x0f00) &&
		(x.b & 0x00f0) == (y.b & 0x0f00));
}

int
h5()
{
	static struct hx x = { 0x0100, 0x0200, ~1 };
	static struct hy y = { ~2, 0x0010, 0x0020 };

	return ((x.a & 0x0f00) == (y.a & 0x00f0) &&
		(x.b & 0x0f00) == (y.b & 0x00f0));
}

int
h6()
{
	static struct hx x = { 0xfd10, 0xfe20, ~1 };
	static struct hy y = { ~2, 0xc11f, 0xc22f };

	return ((x.a & 0x03ff) == (y.a & 0x3ff0) &&
		(x.b & 0x03ff) == (y.b & 0x3ff0));
}

int
h7()
{
	static struct hx x = { 0xc11f, 0xc22f, ~1 };
	static struct hy y = { ~2, 0xfd10, 0xfe20 };

	return ((x.a & 0x3ff0) == (y.a & 0x03ff) &&
		(x.b & 0x3ff0) == (y.b & 0x03ff));
}

int
main()
{
  if (!a1 ())
    Mymyabort ();
  if (!a2 ())
    Mymyabort ();
  if (!a3 ())
    Mymyabort ();
  if (!b1 ())
    Mymyabort ();
  if (!b2 ())
    Mymyabort ();
  if (!b3 ())
    Mymyabort ();
  if (!c1 ())
    Mymyabort ();
  if (!c2 ())
    Mymyabort ();
  if (!c3 ())
    Mymyabort ();
  if (!d1 ())
    Mymyabort ();
  if (!d2 ())
    Mymyabort ();
  if (!d3 ())
    Mymyabort ();
  if (!e1 ())
    Mymyabort ();
  if (!e2 ())
    Mymyabort ();
  if (!e3 ())
    Mymyabort ();
  if (!e4 ())
    Mymyabort ();
  if (!f1 ())
    Mymyabort ();
  if (!f2 ())
    Mymyabort ();
  if (!f3 ())
    Mymyabort ();
  if (!f4 ())
    Mymyabort ();
  if (!g1 ())
    Mymyabort ();
  if (!g2 ())
    Mymyabort ();
  if (!g3 ())
    Mymyabort ();
  if (g4 ())
    Mymyabort ();
  if (g5 ())
    Mymyabort ();
  if (!g6 ())
    Mymyabort ();
  if (!g7 ())
    Mymyabort ();
  if (!h1 ())
    Mymyabort ();
  if (!h2 ())
    Mymyabort ();
  if (!h3 ())
    Mymyabort ();
  if (h4 ())
    Mymyabort ();
  if (h5 ())
    Mymyabort ();
  if (!h6 ())
    Mymyabort ();
  if (!h7 ())
    Mymyabort ();
  exit (0);
}
