#include <stddef.h>
#include <sys/cdefs.h>
#include <sys/types.h>

typedef ptrdiff_t regoff_t;

typedef struct {
  regoff_t rm_so;
  regoff_t rm_eo;
} regmatch_t;

#define REG_EXTENDED 1
#define REG_ICASE 2
#define REG_NOSUB 4
#define REG_NEWLINE 8

#define REG_NOTBOL 1
#define REG_NOTEOL 2

#define REG_NOMATCH -1

#define RE_DUP_MAX 8192

struct __regex_t;

typedef int (*matcher)(void*,const char*,int ofs,struct __regex_t* t,int plus,int eflags);

typedef struct __regex_t {
  struct regex {
    matcher m;
    void* next;
    int pieces;
    int num;
    struct branch* b;
  } r;
  int brackets,cflags;
  regmatch_t* l;
} regex_t;
#define re_nsub r.pieces


#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <sys/types.h>
#include <string.h>
#include <assert.h>

#if !defined(__x86_64__)
#undef WANT_REGEX_JIT
#endif

/* this is ugly.
 * the idea is to build a parse tree, then do some poor man's OOP with a
 * generic matcher function call that is always that the start of each
 * record, and a next pointer.  When the parse tree is done, we need to
 * recursively set the next pointers to point to the part of the parse
 * tree that needs to match next.
 * This is the prototype of the generic match function call pointer.
 * The first argument is the "this" pointer, the second is the text to
 * be matched against, ofs is the offset from the start of the matched
 * text (so we can match "^") and matches is an array where match
 * positions are stored. */
/* now declared in regex.h: */
/* typedef int (*matcher)(void*,const char*,int ofs,regmatch_t* matches,int plus,int eflags); */

/* one would think that this is approach is an order of magnitude slower
 * than the standard NFA approach, but it isn't.  The busybox grep took
 * 0.26 seconds for a fixed string compared to 0.19 seconds for the
 * glibc regex. */

/* first part: parse a regex into a parse tree */
struct bracketed {
  unsigned int cc[32];
};

/* now declared in regex.h:
struct regex {
  matcher m;
  void* next;
  int pieces;
  int num;
  struct branch *b;
}; */

struct string {
  char* s;
  size_t len;
};

struct atom {
  matcher m;
  void* next;
  enum { ILLEGAL, EMPTY, REGEX, BRACKET, ANY, LINESTART, LINEEND, WORDSTART, WORDEND, CHAR, STRING, BACKREF, } type;
  int bnum;
  union {
    struct regex r;
    struct bracketed b;
    char c;
    struct string s;
  } u;
};

struct piece {
  matcher m;
  void* next;
  struct atom a;
  unsigned int min,max;
};

struct branch {
  matcher m;
  void* next;
  int num;
  struct piece *p;
};

/* needs to do "greedy" matching, i.e. match as often as possible */
static int matchpiece(void*__restrict__ x,const char*__restrict__ s,int ofs,struct __regex_t*__restrict__ preg,int plus,int eflags) {
  register struct piece* a=(struct piece*)x;
  int matchlen=0;
  int tmp=0,num=0;
  unsigned int *offsets;
  assert(a->max>0 && a->max<1000);
#ifdef DEBUG
  printf("alloca(%d)\n",sizeof(int)*(a->max+1));
#endif
  offsets=alloca(sizeof(int)*(a->max+1));
  offsets[0]=0;
//  printf("allocating %d offsets...\n",a->max);
//  printf("matchpiece \"%s\"...\n",s);
  /* first, try to match the atom as often as possible, up to a->max times */
  if (a->max == 1 && a->min == 1)
    return a->a.m(&a->a,s+matchlen,ofs+matchlen,preg,0,eflags);
  while ((unsigned int)num<a->max) {
    void* save=a->a.next;
    a->a.next=0;
    if ((tmp=a->a.m(&a->a,s+matchlen,ofs+matchlen,preg,0,eflags))>=0) {
      a->a.next=save;
      ++num;
      matchlen+=tmp;
//      printf("setting offsets[%d] to %d\n",num,tmp);
      offsets[num]=tmp;
    } else {
      a->a.next=save;
      break;
    }
  }
  if ((unsigned int)num<a->min) return -1;		/* already at minimum matches; signal mismatch */
  /* then, while the rest does not match, back off */
  for (;num>=0;) {
    if (a->next)
      tmp=((struct atom*)(a->next))->m(a->next,s+matchlen,ofs+matchlen,preg,plus+matchlen,eflags);
    else
      tmp=plus+matchlen;
    if (tmp>=0) break;	/* it did match; don't back off any further */
//    printf("using offsets[%d] (%d)\n",num,offsets[num]);
    matchlen-=offsets[num];
    --num;
  }
  return tmp;
}

int regexec(const regex_t*__restrict__ preg, const char*__restrict__ string, size_t nmatch, regmatch_t pmatch[], int eflags) {
  int matched;
  const char *orig=string;
  assert(preg->brackets+1>0 && preg->brackets<1000);
  for (matched=0; (unsigned int)matched<nmatch; ++matched)
    pmatch[matched].rm_so=-1;
#ifdef DEBUG
  printf("alloca(%d)\n",sizeof(regmatch_t)*(preg->brackets+3));
#endif
  ((regex_t*)preg)->l=alloca(sizeof(regmatch_t)*(preg->brackets+3));
  int earlyabort=(preg->cflags&REG_NEWLINE)==0;
  if (earlyabort) {
    int i;
    for (i=0; i<preg->r.num; ++i)
      if (preg->r.b[i].p->a.type!=LINESTART) {
	earlyabort=0;
	break;
      }
  }
  while (1) {
    matched=preg->r.m((void*)&preg->r,string,string-orig,(regex_t*)preg,0,eflags);
//    printf("ebp on stack = %x\n",stack[1]);
    /* if (__unlikely(matched>=0)) { */
    if (matched>=0) {
      matched=preg->r.m((void*)&preg->r,string,string-orig,(regex_t*)preg,0,eflags);
      preg->l[0].rm_so=string-orig;
      preg->l[0].rm_eo=string-orig+matched;
      if ((preg->cflags&REG_NOSUB)==0) memcpy(pmatch,preg->l,nmatch*sizeof(regmatch_t));
      return 0;
    }
    if (!*string) break;
    ++string;
    eflags|=REG_NOTBOL;
    /* we are no longer at the beginning of the line, so if our regex
     * starts with ^, we can skip trying to run it on the rest of the
     * line */
    if (earlyabort) break;
  }
  return REG_NOMATCH;
}

int main() {
  return 0;
}
