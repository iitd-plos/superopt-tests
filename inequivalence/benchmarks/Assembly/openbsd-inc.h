#ifndef _MACHINE_ASM_H_
#define _MACHINE_ASM_H_

#define _C_LABEL(name)	name
#define	_ASM_LABEL(x)	x

#define CVAROFF(x, y)	x + y

#ifdef __STDC__
# define __CONCAT(x,y)	x ## y
# define __STRING(x)	#x
#else
# define __CONCAT(x,y)	x/**/y
# define __STRING(x)	"x"
#endif

/* let kernels and others override entrypoint alignment */
#ifndef _ALIGN_TEXT
# define _ALIGN_TEXT .align 2, 0x90
#endif

/* NB == No Binding: use .globl or .weak as necessary */
#define _ENTRY_NB(x) \
	.text; _ALIGN_TEXT; .type x,@function; x:
#define _ENTRY(x)	.globl x; _ENTRY_NB(x)

#if defined(PROF) || defined(GPROF)
# define _PROF_PROLOGUE	\
	pushl %ebp; movl %esp,%ebp; call PIC_PLT(mcount); popl %ebp
#else
# define _PROF_PROLOGUE
#endif

#define	ENTRY(y)	_ENTRY(y); _PROF_PROLOGUE
#define	ENTRY_NB(y)	_ENTRY_NB(y); _PROF_PROLOGUE
#define	NENTRY(y)	_ENTRY(y)
#define	ASENTRY(y)	_ENTRY(y); _PROF_PROLOGUE
#define	NASENTRY(y)	_ENTRY(y)
#define	END(y)		.size y, . - y

#define	ALTENTRY(name)	.globl name; name:

#endif /* !_MACHINE_ASM_H_ */