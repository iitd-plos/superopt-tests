#include "types.h"
#include "defs.h"
#include "param.h"
#include "stat.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"
#include "sleeplock.h"
#include "fs.h"
#include "buf.h"
#include "file.h"

extern struct inode* namex(char *path, int nameiparent, char *name);

struct inode*
namei(char *path)
{
  char name[DIRSIZ];
  return namex(path, 0, name);
}


