/*	$NetBSD: bcopy.S,v 1.15 2005/02/09 18:15:16 christos Exp $	*/

#define BCOPY

#include "netbsd-inc.h"

	/*
	 * (ov)bcopy (src,dst,cnt)
	 *  ws@tools.de     (Wolfgang Solfrank, TooLs GmbH) +49-228-985800
	 */

#ifdef BCOPY
ENTRY(bcopy)
#else
#ifdef MEMMOVE
ENTRY(memmove)
#else
#define MEMCPY
#define NO_OVERLAP
ENTRY(memcpy)
#endif
#endif
	push	%esi
	mov	%edi,%edx
#if defined(MEMCPY) || defined(MEMMOVE)
	movl	8(%esp),%edi
	movl	12(%esp),%esi
#else
	movl	8(%esp),%esi
	movl	12(%esp),%edi
#endif
	movl	16(%esp),%ecx
#if defined(NO_OVERLAP)
	movl	%ecx,%eax
#else
	movl	%edi,%eax
	subl	%esi,%eax
	cmpl	%ecx,%eax	/* overlapping? */
	movl	%ecx,%eax
	jb	.Lbackwards
#endif
	/* nope, copy forwards. */
	shrl	$2,%ecx		/* copy by words */
	rep
	movsl
	and	$3,%eax		/* any bytes left? */
	jnz	.Ltrailing
.Ldone:
#if defined(MEMCPY) || defined(MEMMOVE)
	movl	8(%esp),%eax
#endif
	mov	%edx,%edi
	pop	%esi
	ret

.Ltrailing:
	cmp	$2,%eax
	jb	1f
	movw	(%esi),%ax
	movw	%ax,(%edi)
	je	.Ldone
	movb	2(%esi),%al
	movb	%al,2(%edi)
	jmp	.Ldone
1:	movb	(%esi),%al
	movb	%al,(%edi)
	jmp	.Ldone

#if !defined(NO_OVERLAP)
.Lbackwards:
	addl	%ecx,%edi	/* copy backwards. */
	addl	%ecx,%esi
	and	$3,%eax		/* any fractional bytes? */
	jnz	.Lback_align
.Lback_aligned:
	shrl	$2,%ecx
	subl	$4,%esi
	subl	$4,%edi
	std
	rep
	movsl
	cld
	jmp	.Ldone

.Lback_align:
	sub	%eax,%esi
	sub	%eax,%edi
	cmp	$2,%eax
	jb	1f
	je	2f
	movb	2(%esi),%al
	movb	%al,2(%edi)
2:	movw	(%esi),%ax
	movw	%ax,(%edi)
	jmp	.Lback_aligned
1:	movb	(%esi),%al
	movb	%al,(%edi)
	jmp	.Lback_aligned
#endif

#ifdef BCOPY
END(bcopy)
#else
#ifdef MEMMOVE
END(memmove)
#else
END(memcpy)
#endif
#endif

