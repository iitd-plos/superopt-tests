#include <stddef.h>

size_t strlen(const char* str) {
  const char* char_ptr = str;
  while(*char_ptr != '\0') {
    char_ptr++;
  }

  return (size_t)(char_ptr-str);
}

int main() {
  return 0;
}
