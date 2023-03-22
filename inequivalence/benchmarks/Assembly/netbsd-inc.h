#ifndef _I386_ASM_H_
#define _I386_ASM_H_

#ifdef __ELF__
# define _C_LABEL(x)	x
#else
# ifdef __STDC__
#  define _C_LABEL(x)	_ ## x
# else
#  define _C_LABEL(x)	_/**/x
# endif
#endif
#define	_ASM_LABEL(x)	x

#define CVAROFF(x, y)		_C_LABEL(x) + y

#ifdef __STDC__
# define __CONCAT(x,y)	x ## y
# define __STRING(x)	#x
#else
# define __CONCAT(x,y)	x/**/y
# define __STRING(x)	"x"
#endif

/* let kernels and others override entrypoint alignment */
#if !defined(_ALIGN_TEXT) && !defined(_KERNEL)
# ifdef _STANDALONE
#  define _ALIGN_TEXT .align 1
# elif defined __ELF__
#  define _ALIGN_TEXT .align 16
# else
#  define _ALIGN_TEXT .align 4
# endif
#endif

#define _ENTRY(x) \
	.text; _ALIGN_TEXT; .globl x; .type x,@function; x:
#define _LABEL(x) \
	.globl x; x:

#define _PROF_PROLOGUE

#define	ENTRY(y)	_ENTRY(_C_LABEL(y)); _PROF_PROLOGUE
#define	NENTRY(y)	_ENTRY(_C_LABEL(y))
#define	ALTENTRY(x)	NENTRY(x)
#define	ASENTRY(y)	_ENTRY(_ASM_LABEL(y)); _PROF_PROLOGUE
#define	LABEL(y)	_LABEL(_C_LABEL(y))
#define	END(y)		.size y, . - y

#endif /* !_I386_ASM_H_ */
