	.file	"lcmc.c"
	.text
	.globl	div
	.type	div, @function
div:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-24(%rbp)
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	div, .-div
	.globl	lcmc
	.type	lcmc, @function
lcmc:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %ebx
	.cfi_offset 3, -24
	imull	-40(%rbp), %ebx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcdc
	movl	%eax, -44(%rbp)
	movl	%ebx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-44(%rbp)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	lcmc, .-lcmc
	.globl	gcdc
	.type	gcdc, @function
gcdc:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	jmp	.L4
.L6:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L5
	movl	-8(%rbp), %eax
	subl	%eax, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
.L4:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L6
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	gcdc, .-gcdc
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
