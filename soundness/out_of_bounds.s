	.text
	.file	"out_of_bounds"
	.globl	out_of_bounds           # -- Begin function out_of_bounds
	.p2align	4, 0x90
	.type	out_of_bounds,@function
out_of_bounds:                          # @out_of_bounds
# %bb.0:                                # %entry
	pushl	%ebp
	movl	arr+20, %eax                    # OOPS, out of bounds access!
	movl	%esp, %ebp
	popl	%ebp
	retl
.Lfunc_end0:
	.size	out_of_bounds, .Lfunc_end0-out_of_bounds
                                        # -- End function
	.type	arr,@object             # @arr
	.comm	arr,16,4


	.ident	"clang version 8.0.1 "
	.section	".note.GNU-stack","",@progbits
