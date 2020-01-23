/* openbsd */
char *
stpcpy(char *to, const char *from)
{
	for (; (*to = *from) != '\0'; ++from, ++to);
	return(to);
}

int main(int argc, char* argv[])
{
  return 0;
}
