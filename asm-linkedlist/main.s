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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L197
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movslq	%eax, %rbp
	movq	%rax, %rbx
	salq	$3, %rbp
	movq	%rbp, %rdi
	call	malloc@PLT
	movq	%rbp, %rdi
	movq	%rax, %r12
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, %rbp
	call	time@PLT
	movq	%rax, %rdi
	call	srand48@PLT
	xorl	%eax, %eax
	call	pq_create@PLT
	movq	%rax, 32(%rsp)
	testl	%ebx, %ebx
	jle	.L4
	leal	-1(%rbx), %r14d
	leaq	8(%r12), %rcx
	movq	%r12, %r15
	movq	%rbp, %r13
	leaq	0(,%r14,8), %rdx
	movq	%rbp, %rbx
	movq	%rdx, 24(%rsp)
	addq	%rcx, %rdx
	movq	%rdx, %rax
	movq	%rdx, 8(%rsp)
	subq	%r12, %rax
	subq	$8, %rax
	shrq	$3, %rax
	addq	$1, %rax
	andl	$7, %eax
	je	.L5
	cmpq	$1, %rax
	je	.L118
	cmpq	$2, %rax
	je	.L119
	cmpq	$3, %rax
	je	.L120
	cmpq	$4, %rax
	je	.L121
	cmpq	$5, %rax
	je	.L122
	cmpq	$6, %rax
	je	.L123
	movq	%rcx, 16(%rsp)
	leaq	8(%rbp), %rbx
	call	drand48@PLT
	movq	%r12, 0(%rbp)
	movq	16(%rsp), %r15
	movsd	%xmm0, (%r12)
.L123:
	call	drand48@PLT
	addq	$8, %rbx
	movq	%r15, -8(%rbx)
	addq	$8, %r15
	movsd	%xmm0, -8(%r15)
.L122:
	call	drand48@PLT
	addq	$8, %rbx
	movq	%r15, -8(%rbx)
	addq	$8, %r15
	movsd	%xmm0, -8(%r15)
.L121:
	call	drand48@PLT
	addq	$8, %rbx
	movq	%r15, -8(%rbx)
	addq	$8, %r15
	movsd	%xmm0, -8(%r15)
.L120:
	call	drand48@PLT
	addq	$8, %rbx
	movq	%r15, -8(%rbx)
	addq	$8, %r15
	movsd	%xmm0, -8(%r15)
.L119:
	call	drand48@PLT
	addq	$8, %rbx
	movq	%r15, -8(%rbx)
	addq	$8, %r15
	movsd	%xmm0, -8(%r15)
.L118:
	call	drand48@PLT
	addq	$8, %rbx
	movq	%r15, -8(%rbx)
	addq	$8, %r15
	movsd	%xmm0, -8(%r15)
	cmpq	8(%rsp), %r15
	je	.L194
.L5:
	call	drand48@PLT
	movq	%r15, (%rbx)
	leaq	8(%r15), %rsi
	addq	$64, %rbx
	movsd	%xmm0, (%r15)
	movq	%rsi, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %rdi
	leaq	16(%r15), %r8
	movsd	%xmm0, 8(%r15)
	movq	%rdi, -56(%rbx)
	movq	%r8, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %r9
	leaq	24(%r15), %r10
	movsd	%xmm0, 16(%r15)
	movq	%r9, -48(%rbx)
	movq	%r10, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %r11
	leaq	32(%r15), %rdx
	movsd	%xmm0, 24(%r15)
	movq	%r11, -40(%rbx)
	movq	%rdx, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %rcx
	leaq	40(%r15), %rax
	movsd	%xmm0, 32(%r15)
	movq	%rcx, -32(%rbx)
	movq	%rax, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %rsi
	leaq	48(%r15), %rdi
	movsd	%xmm0, 40(%r15)
	movq	%rsi, -24(%rbx)
	movq	%rdi, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %r8
	leaq	56(%r15), %r9
	addq	$64, %r15
	movsd	%xmm0, -16(%r15)
	movq	%r8, -16(%rbx)
	movq	%r9, 16(%rsp)
	call	drand48@PLT
	movq	16(%rsp), %r10
	movsd	%xmm0, -8(%r15)
	movq	%r10, -8(%rbx)
	cmpq	8(%rsp), %r15
	jne	.L5
.L194:
	xorl	%esi, %esi
	xorl	%edi, %edi
	leaq	32(%rsp), %rbx
	xorl	%r15d, %r15d
	call	m5_dump_reset_stats@PLT
	leaq	1(%r14), %r11
	andl	$7, %r11d
	je	.L7
	cmpq	$1, %r11
	je	.L136
	cmpq	$2, %r11
	je	.L137
	cmpq	$3, %r11
	je	.L138
	cmpq	$4, %r11
	je	.L139
	cmpq	$5, %r11
	je	.L140
	cmpq	$6, %r11
	je	.L141
	movq	0(%rbp), %rsi
	movsd	(%r12), %xmm0
	movq	%rbx, %rdi
	movl	$1, %r15d
	call	pq_push@PLT
.L141:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	addq	$1, %r15
	call	pq_push@PLT
.L140:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	addq	$1, %r15
	call	pq_push@PLT
.L139:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	addq	$1, %r15
	call	pq_push@PLT
.L138:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	addq	$1, %r15
	call	pq_push@PLT
.L137:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	addq	$1, %r15
	call	pq_push@PLT
.L136:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	call	pq_push@PLT
	movq	%r15, %rdx
	addq	$1, %r15
	cmpq	%r14, %rdx
	je	.L193
.L7:
	movq	0(%rbp,%r15,8), %rsi
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	call	pq_push@PLT
	leaq	1(%r15), %rcx
	movq	%rbx, %rdi
	movq	0(%rbp,%rcx,8), %rsi
	movsd	(%r12,%rcx,8), %xmm0
	call	pq_push@PLT
	leaq	2(%r15), %rax
	movq	%rbx, %rdi
	movq	0(%rbp,%rax,8), %rsi
	movsd	(%r12,%rax,8), %xmm0
	call	pq_push@PLT
	leaq	3(%r15), %rdi
	movq	0(%rbp,%rdi,8), %rsi
	movsd	(%r12,%rdi,8), %xmm0
	movq	%rbx, %rdi
	call	pq_push@PLT
	leaq	4(%r15), %r8
	movq	%rbx, %rdi
	movq	0(%rbp,%r8,8), %rsi
	movsd	(%r12,%r8,8), %xmm0
	call	pq_push@PLT
	leaq	5(%r15), %r9
	movq	%rbx, %rdi
	movq	0(%rbp,%r9,8), %rsi
	movsd	(%r12,%r9,8), %xmm0
	call	pq_push@PLT
	leaq	6(%r15), %r10
	movq	%rbx, %rdi
	movq	0(%rbp,%r10,8), %rsi
	movsd	(%r12,%r10,8), %xmm0
	call	pq_push@PLT
	leaq	7(%r15), %r11
	movq	%rbx, %rdi
	addq	$8, %r15
	movq	0(%rbp,%r11,8), %rsi
	movsd	(%r12,%r11,8), %xmm0
	movq	%r11, 8(%rsp)
	call	pq_push@PLT
	movq	8(%rsp), %rsi
	cmpq	%r14, %rsi
	jne	.L7
.L193:
	movq	24(%rsp), %r15
	leaq	8(%rbp), %rdx
	movq	%rbp, %r14
	addq	%rdx, %r15
	movq	%r15, %rcx
	subq	%rbp, %rcx
	subq	$8, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	andl	$7, %ecx
	je	.L8
	cmpq	$1, %rcx
	je	.L124
	cmpq	$2, %rcx
	je	.L125
	cmpq	$3, %rcx
	je	.L126
	cmpq	$4, %rcx
	je	.L127
	cmpq	$5, %rcx
	je	.L128
	cmpq	$6, %rcx
	je	.L129
	movq	%rbx, %rdi
	movq	%rdx, 8(%rsp)
	call	pq_pop@PLT
	movq	8(%rsp), %r14
	movq	%rax, 0(%rbp)
.L129:
	movq	%rbx, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
.L128:
	movq	%rbx, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
.L127:
	movq	%rbx, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
.L126:
	movq	%rbx, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
.L125:
	movq	%rbx, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
.L124:
	movq	%rbx, %rdi
	addq	$8, %r14
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
	cmpq	%r15, %r14
	je	.L192
.L8:
	movq	%rbx, %rdi
	addq	$64, %r14
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -64(%r14)
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -56(%r14)
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -48(%r14)
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -40(%r14)
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -32(%r14)
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -24(%r14)
	call	pq_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, -16(%r14)
	call	pq_pop@PLT
	movq	%rax, -8(%r14)
	cmpq	%r15, %r14
	jne	.L8
.L192:
	xorl	%esi, %esi
	xorl	%edi, %edi
	leaq	.LC1(%rip), %rbx
	call	m5_dump_reset_stats@PLT
	movq	%r15, %rax
	subq	%rbp, %rax
	subq	$8, %rax
	shrq	$3, %rax
	addq	$1, %rax
	andl	$7, %eax
	je	.L11
	cmpq	$1, %rax
	je	.L130
	cmpq	$2, %rax
	je	.L131
	cmpq	$3, %rax
	je	.L132
	cmpq	$4, %rax
	je	.L133
	cmpq	$5, %rax
	je	.L134
	cmpq	$6, %rax
	je	.L135
	movq	0(%rbp), %r13
	testq	%r13, %r13
	je	.L20
	movsd	0(%r13), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L20:
	leaq	8(%rbp), %r13
.L135:
	movq	0(%r13), %rdi
	testq	%rdi, %rdi
	je	.L23
	movsd	(%rdi), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L23:
	addq	$8, %r13
.L134:
	movq	0(%r13), %r8
	testq	%r8, %r8
	je	.L26
	movsd	(%r8), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L26:
	addq	$8, %r13
.L133:
	movq	0(%r13), %r9
	testq	%r9, %r9
	je	.L29
	movsd	(%r9), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L29:
	addq	$8, %r13
.L132:
	movq	0(%r13), %r10
	testq	%r10, %r10
	je	.L32
	movsd	(%r10), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L32:
	addq	$8, %r13
.L131:
	movq	0(%r13), %r11
	testq	%r11, %r11
	je	.L35
	movsd	(%r11), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L35:
	addq	$8, %r13
.L130:
	movq	0(%r13), %rsi
	testq	%rsi, %rsi
	je	.L38
	movsd	(%rsi), %xmm0
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$1, %eax
	call	__printf_chk@PLT
.L38:
	addq	$8, %r13
	cmpq	%r15, %r13
	je	.L12
.L11:
	movq	0(%r13), %rdx
	testq	%rdx, %rdx
	je	.L10
	movsd	(%rdx), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L10:
	movq	8(%r13), %rcx
	leaq	8(%r13), %r14
	testq	%rcx, %rcx
	je	.L41
	movsd	(%rcx), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L41:
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.L43
	movsd	(%rax), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L43:
	movq	16(%r14), %r13
	testq	%r13, %r13
	je	.L45
	movsd	0(%r13), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L45:
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.L47
	movsd	(%rdi), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L47:
	movq	32(%r14), %r8
	testq	%r8, %r8
	je	.L49
	movsd	(%r8), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L49:
	movq	40(%r14), %r9
	testq	%r9, %r9
	je	.L51
	movsd	(%r9), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L51:
	movq	48(%r14), %r10
	testq	%r10, %r10
	je	.L53
	movsd	(%r10), %xmm0
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L53:
	leaq	56(%r14), %r13
	cmpq	%r15, %r13
	jne	.L11
.L12:
	movq	32(%rsp), %rdi
	xorl	%eax, %eax
	call	pq_destroy@PLT
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbp, %rdi
	call	free@PLT
	xorl	%eax, %eax
.L1:
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L198
	addq	$56, %rsp
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
.L197:
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
.L198:
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
