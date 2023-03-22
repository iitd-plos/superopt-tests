#define MEMCOPY

#include "../freebsd-inc.h"

#if 0
	RCSID("$NetBSD: bcopy.S,v 1.6 1996/11/12 00:50:06 jtc Exp $")
#endif

	/*
	 * (ov)bcopy (src,dst,cnt)
	 *  ws@tools.de     (Wolfgang Solfrank, TooLs GmbH) +49-228-985800
	 */

#ifdef MEMCOPY
ENTRY(memcpy)
#else
#ifdef MEMMOVE
ENTRY(memmove)
#else
ENTRY(bcopy)
#endif
#endif
	pushl	%esi
	pushl	%edi
#if defined(MEMCOPY) || defined(MEMMOVE)
	movl	12(%esp),%edi
	movl	16(%esp),%esi
	movl	%edi,%eax
#else
	movl	12(%esp),%esi
	movl	16(%esp),%edi
#endif
	movl	20(%esp),%ecx
	movl	%edi,%edx
	subl	%esi,%edx
	cmpl	%ecx,%edx	/* overlapping? */
	jb	2f
	cld			/* nope, copy forwards. */
	movl	%ecx,%edx
	shrl	$2,%ecx		/* copy by words */
	rep
	movsl
	movl	%edx,%ecx
	andl	$3,%ecx		/* any bytes left? */
	jne	1f
	popl	%edi
	popl	%esi
	ret
1:
	rep
	movsb
	popl	%edi
	popl	%esi
	ret
2:
	addl	%ecx,%edi	/* copy backwards. */
	addl	%ecx,%esi
	std
	movl	%ecx,%edx
	decl	%edi
	decl	%esi
	andl	$3,%ecx		/* any fractional bytes? */
	je	3f
	rep
	movsb
3:
	movl	%edx,%ecx	/* copy remainder by words */
	shrl	$2,%ecx
	subl	$3,%esi
	subl	$3,%edi
	rep
	movsl
	popl	%edi
	popl	%esi
	cld
	ret
#ifdef MEMCOPY
END(memcpy)
#else
#ifdef MEMMOVE
END(memmove)
#else
END(bcopy)
#endif
#endif

	.section .note.GNU-stack,"",%progbits

