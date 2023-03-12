#include <wchar.h>

int wmemcmp(const wchar_t *l, const wchar_t *r, size_t n)
{
	for (; n && *l==*r; n--, l++, r++);
	// return n ? *l-*r : 0;
	return n ? (*l-*r > 0 ? 1 : (*l-*r < 0 ? -1 : 0)) : 0;
}
