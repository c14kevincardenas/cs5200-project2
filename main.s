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
