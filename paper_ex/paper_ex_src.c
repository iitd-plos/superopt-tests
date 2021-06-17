//glibc

#include <stddef.h>

char *
strcpy (char *dest, const char *src)
{

  //size_t len = strlen(src)+1;
  //
  //Alteration
//   const char* char_ptr = src;
//   while(*char_ptr != '\0') {
//     char_ptr++;
//   }
//   size_t len = (size_t)(char_ptr-src);

  //return memcpy (dest, src, strlen (src) + 1);
  //
  // Alteration
  
  char *d = dest;
  while ((*dest++ = *src++));
  return dest;
}
//libc_hidden_builtin_def (strcpy)
