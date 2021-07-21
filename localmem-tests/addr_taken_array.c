int addr_taken_array()
{
  char ret[8];
  MYmybar(ret);
  return MYmystrtol(ret, 0, 16);
}
