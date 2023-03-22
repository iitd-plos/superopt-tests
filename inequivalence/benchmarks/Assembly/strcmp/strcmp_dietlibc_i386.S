.text
.global strcmp
.type	strcmp,@function

#ifdef HIGH_PERFORMANCE
.align 	16
#endif

.Ldiff:
	movzbl	(%edx), %ecx
	subl	%ecx, %eax		# (unsigned char)*p - (unsigned char)*q, so wie die Original libc
	ret

strcmp:
	movl 	4(%esp), %ecx
	movl 	8(%esp), %edx
	xorl	%eax, %eax
.Lloop:					# Schleifenanfang liegt genau auf Modulanfang + 0x10, damit alignbar
	movb 	(%ecx), %al
	cmpb	(%edx), %al
	jnz	.Ldiff
	incl 	%edx
	incl 	%ecx
	testb	%al, %al
	jnz	.Lloop
	ret
