	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Please inform a number n"
.LC1:
	.string	"%g\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L25
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movslq	%eax, %r12
	movq	%rax, %rbp
	salq	$3, %r12
	movq	%r12, %rdi
	call	malloc@PLT
	movq	%r12, %rdi
	movq	%rax, %r13
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, %r12
	call	time@PLT
	movq	%rax, %rdi
	call	srand48@PLT
	xorl	%eax, %eax
	call	pq_create@PLT
	movq	%rax, 16(%rsp)
	testl	%ebp, %ebp
	jle	.L4
	leal	-1(%rbp), %eax
	movq	%r13, %r14
	movq	%r12, %rbx
	movq	%r12, %r15
	movq	%rax, (%rsp)
	salq	$3, %rax
	movq	%rax, 8(%rsp)
	leaq	8(%r13,%rax), %rbp
	.p2align 4,,10
	.p2align 3
.L5:
	call	drand48@PLT
	movq	%r14, (%r15)
	addq	$8, %r14
	addq	$8, %r15
	movsd	%xmm0, -8(%r14)
	cmpq	%rbp, %r14
	jne	.L5
	xorl	%esi, %esi
	xorl	%edi, %edi
	leaq	16(%rsp), %rbp
	xorl	%r15d, %r15d
	call	m5_dump_reset_stats@PLT
	.p2align 4,,10
	.p2align 3
.L7:
	movq	(%r12,%r15,8), %rsi
	movsd	0(%r13,%r15,8), %xmm0
	movq	%rbp, %rdi
	call	pq_push@PLT
	movq	%r15, %rdx
	addq	$1, %r15
	cmpq	(%rsp), %rdx
	jne	.L7
	movq	8(%rsp), %rax
	movq	%r12, %r14
	leaq	8(%r12,%rax), %r15
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%rbp, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
	cmpq	%r15, %r14
	jne	.L8
	xorl	%esi, %esi
	xorl	%edi, %edi
	leaq	.LC1(%rip), %rbp
	call	m5_dump_reset_stats@PLT
	.p2align 4,,10
	.p2align 3
.L11:
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L10
	movsd	(%rax), %xmm0
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L10:
	addq	$8, %rbx
	cmpq	%r15, %rbx
	jne	.L11
.L12:
	movq	16(%rsp), %rdi
	xorl	%eax, %eax
	call	pq_destroy@PLT
	movq	%r13, %rdi
	call	free@PLT
	movq	%r12, %rdi
	call	free@PLT
	xorl	%eax, %eax
.L1:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L26
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L25:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L1
.L4:
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_reset_stats@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_reset_stats@PLT
	jmp	.L12
.L26:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
