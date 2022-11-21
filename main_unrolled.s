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
