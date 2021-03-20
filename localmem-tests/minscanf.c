#include <stdio.h>
#include <stdarg.h>

// rudimentary minscanf

int MYmy_isspace(int);
int MYmy_isdigit(int);
int MYmy_isblank(int);
int MYmy_getchar(void);
int MYmy_ungetc(int, FILE*);

int
read_int()
{
  int ret = 0;
  char ch;
  while (MYmy_isdigit(ch = MYmy_getchar())) {
    // no overflow check lol
    ret = ret*10 + (ch-'0');
  }
  if (ch == EOF)
    return ret;
  MYmy_ungetc(ch, stdin);
  return ret;
}

//float
//read_float()
//{
//  // just use scanf lol
//  float d;
//  scanf("%f", &d);
//  return d;
//}

void
read_string(char* s)
{
  char ch;
  while (!MYmy_isspace(ch = MYmy_getchar())) {
    *s++ = ch;
  }
  // no need to unget space character
  *s = '\0';
}

int match_char(char tc)
{
	char c;
	while (MYmy_isblank(c = MYmy_getchar())); // blanks are not considered
	if (c == EOF || c != tc) {
		return 0;
	}
	return 1;
}

int minscanf(char* fmt, ...)
{
	va_list ap;
	char *p;
	int ret = 0;

	va_start(ap, fmt);
	for (p = fmt; *p; ++p) {
		if (*p != '%') {
			if (!MYmy_isblank(*p)) { // blanks are ignored
			  if (!match_char(*p))
			    goto end;
			}
			continue;
		}
		//assert(*p == '%');
		switch (*++p)
		{
			case 'd' :
			  *va_arg(ap, int*) = read_int();
				++ret;
				break;
			//case 'f' :
			//	*va_arg(ap, float*) = read_float();
			//	++ret;
			//	break;
			case 's' :
				read_string(va_arg(ap, char*));
				++ret;
				break;
			case '%':
			  if (!match_char('%'))
			    goto end;
			  break;
			default :
				// ERROR!
				goto end;
		}
	}
end:
	va_end(ap);
	return ret;
}
//
//int MYmy_printf(char*, ...);
//int main()
//{
//  int i;
//  float f;
//  char s[4096];
//  int ret = minscanf("INTEGER = %d, DOUBLE = %f, STRING = %s , and that's all!", &i, &f, s);
//  MYmy_printf("ret = %d", ret);
//  if (ret == 3) {
//    MYmy_printf("INTEGER = %d, DOUBLE = %f, STRING = %s, and that's all!", i, f, s);
//  }
//  return 0;
//}
