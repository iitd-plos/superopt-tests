#include <stdarg.h>
//#include "eqchecker_helper.h"

/* minprintf: minimal printf with variable argument list */
void minprintf(char *fmt, ...)
{
  va_list ap; /* points to each unnamed arg in turn */
  char *p, *sval;
  int ival;
  //double dval;

  va_start(ap, fmt);
  /* make ap point to 1st unnamed arg */
  for (p = fmt; *p; p++) {
    //DBG(__LINE__);
    if (*p != '%') {
      MYmyprint_char(*p);
      continue;
    }
    switch (*++p) {
      case 'd':
        ival = va_arg(ap, int);
        MYmyprint_int(ival);
        break;
      //case 'f':
      //  dval = va_arg(ap, double);
      //  MYmyprint_float(dval);
      //  break;
      case 's':
        for (sval = va_arg(ap, char *); *sval; sval++)
          MYmyprint_char(*sval);
        break;
      default:
        return;
    }
  }
  va_end(ap); /* clean up when done */
}

//int main()
//{
//  char* name = "Mr Robot";
//  int id = 849;
//  minprintf("Hello %s.  Your id is %d\n", name, id);
//  return 0;
//}
