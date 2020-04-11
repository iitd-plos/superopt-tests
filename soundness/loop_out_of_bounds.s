	.text
	.file	"loop_out_of_bounds"
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	pushl	%ebp
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%esp, %ebp
	cmpl	$1198, %ecx             # imm = 0x4AE
	jg	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	arr+8(,%ecx,4), %eax    # OOPS! off-by-one error, should have been 4
	incl	%ecx
	cmpl	$1199, %ecx             # imm = 0x4AE
	jne	.LBB0_2
.LBB0_3:                                # %for.end
	popl	%ebp
	retl
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.type	arr,@object             # @arr
	.comm	arr,4800,4

	.ident	"clang version 8.0.1 "
	.ident	"clang version 8.0.1 "
	.section	".note.GNU-stack","",@progbits
