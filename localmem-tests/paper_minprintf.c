#include <stdarg.h>

/* minprintf: minimal printf with variable argument list */
void minprintf(char *fmt, ...)
{
  va_list ap; /* points to each unnamed arg in turn */
  char *p, *sval;
  int ival;

  va_start(ap, fmt);
  /* make ap point to 1st unnamed arg */
  for (p = fmt; *p; p++) {
    MYmyDBG();
    if (*p != '%') {
      MYmyprint_char(*p);
      continue;
    }
    switch (*++p) {
      case 'd':
        ival = va_arg(ap, int);
        MYmyprint_int(ival);
        break;
      case 's':
        for (sval = va_arg(ap, char *); *sval; sval++)
          MYmyprint_char(*sval);
        break;
      default:
        goto end;
    }
  }
end:
  va_end(ap); /* clean up when done */
}
