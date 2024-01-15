	.file	"mean.f"
	.text
	.section	.rodata
.LC8:
	.string	"mean.f"
.LC9:
	.ascii	"weeksum "
.LC10:
	.ascii	"mean "
.LC11:
	.ascii	" daily "
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$640, %rsp
	pxor	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$1, -4(%rbp)
.L3:
	cmpl	$7, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L4
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-32(%rbp,%rax,4), %xmm1
	movss	-40(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L3
.L4:
	nop
	leaq	.LC8(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$17, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$8, %edx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-40(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$19, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$5, %edx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$20, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$7, %edx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movq	$4, -608(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	movq	$4, -624(%rbp)
	movb	$1, -612(%rbp)
	movb	$3, -611(%rbp)
	movq	$1, -592(%rbp)
	movq	$7, -584(%rbp)
	movq	$1, -600(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -640(%rbp)
	movq	$-1, -632(%rbp)
	leaq	-640(%rbp), %rsi
	leaq	-576(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.4.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.4.0, @object
	.size	options.4.0, 28
options.4.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC1:
	.long	1088421888
	.align 4
.LC2:
	.long	1086324736
	.align 4
.LC3:
	.long	1084227584
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1077936128
	.align 4
.LC6:
	.long	1073741824
	.align 4
.LC7:
	.long	1065353216
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
