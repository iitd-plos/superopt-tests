/* dietlibc */
char *strpbrk(const char *s, const char *accept) {
    register unsigned int i;
    for (; *s; s++)
        for (i = 0; accept[i]; i++)
            if (*s == accept[i])
                return (char *)s;
    return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
