	.file	"pq-minheap.c"
	.text
	.p2align 4
	.globl	swap
	.type	swap, @function
swap:
.LFB16:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	movsd	8(%rdi), %xmm0
	movdqu	(%rsi), %xmm1
	movups	%xmm1, (%rdi)
	movq	%rax, (%rsi)
	movsd	%xmm0, 8(%rsi)
	ret
	.cfi_endproc
.LFE16:
	.size	swap, .-swap
	.p2align 4
	.globl	heapify
	.type	heapify, @function
heapify:
.LFB17:
	.cfi_startproc
	endbr64
	.p2align 4,,10
	.p2align 3
.L9:
	movq	(%rdi), %rdx
	leal	(%rsi,%rsi), %eax
	movl	%esi, %r11d
	leal	1(%rax), %r9d
	movl	(%rdx), %r8d
	cmpl	%r8d, %r9d
	jge	.L4
	movq	8(%rdx), %r11
	movslq	%eax, %rcx
	movslq	%esi, %r10
	salq	$4, %r10
	salq	$4, %rcx
	movsd	8(%r11,%r10), %xmm0
	comisd	24(%rcx,%r11), %xmm0
	movl	%r9d, %r11d
	cmovbe	%esi, %r11d
.L4:
	leal	2(%rax), %r9d
	cmpl	%r9d, %r8d
	jle	.L6
	cltq
	movq	8(%rdx), %rcx
	movslq	%r11d, %r8
	addq	$2, %rax
	salq	$4, %r8
	salq	$4, %rax
	movsd	8(%rcx,%r8), %xmm1
	ucomisd	8(%rcx,%rax), %xmm1
	cmova	%r9d, %r11d
.L6:
	cmpl	%esi, %r11d
	je	.L3
	movq	8(%rdx), %rdx
	movslq	%r11d, %rax
	movslq	%esi, %rsi
	salq	$4, %rax
	salq	$4, %rsi
	addq	%rdx, %rsi
	addq	%rdx, %rax
	movq	(%rsi), %r10
	movsd	8(%rsi), %xmm2
	movdqu	(%rax), %xmm3
	movups	%xmm3, (%rsi)
	movl	%r11d, %esi
	movq	%r10, (%rax)
	movsd	%xmm2, 8(%rax)
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L3:
	ret
	.cfi_endproc
.LFE17:
	.size	heapify, .-heapify
	.p2align 4
	.globl	pq_create
	.type	pq_create, @function
pq_create:
.LFB18:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$16, %edi
	call	malloc@PLT
	movl	$0, (%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	pq_create, .-pq_create
	.p2align 4
	.globl	pq_push
	.type	pq_push, @function
pq_push:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %r12
	movl	(%r12), %eax
	testl	%eax, %eax
	jne	.L24
	movl	$16, %edi
	movsd	%xmm0, 8(%rsp)
	call	malloc@PLT
	movl	$1, (%r12)
	movsd	8(%rsp), %xmm0
	movq	%rax, 8(%r12)
	movq	%rax, %rcx
.L18:
	movq	%rbx, (%rcx)
	movsd	%xmm0, 8(%rcx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	leal	1(%rax), %esi
	movq	%rdi, %rbp
	movq	8(%r12), %rdi
	movsd	%xmm0, 8(%rsp)
	movslq	%esi, %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movq	0(%rbp), %r11
	movsd	8(%rsp), %xmm0
	movq	%rax, 8(%r12)
	movslq	(%r11), %rcx
	leal	1(%rcx), %edx
	testl	%ecx, %ecx
	movl	%edx, (%r11)
	jne	.L17
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L19:
	movslq	%r9d, %rcx
.L17:
	leal	-1(%rcx), %r8d
	movq	8(%r11), %rdi
	salq	$4, %rcx
	movl	%r8d, %r9d
	shrl	$31, %r9d
	addq	%rdi, %rcx
	addl	%r8d, %r9d
	sarl	%r9d
	movslq	%r9d, %r10
	salq	$4, %r10
	addq	%rdi, %r10
	movsd	8(%r10), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L18
	movdqu	(%r10), %xmm2
	movups	%xmm2, (%rcx)
	movq	0(%rbp), %r11
	testl	%r9d, %r9d
	jne	.L19
.L23:
	movq	8(%r11), %rcx
	jmp	.L18
	.cfi_endproc
.LFE19:
	.size	pq_push, .-pq_push
	.p2align 4
	.globl	pq_pop
	.type	pq_pop, @function
pq_pop:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rdx
	movl	(%rdx), %eax
	movq	8(%rdx), %rdi
	testl	%eax, %eax
	je	.L26
	subl	$1, %eax
	movq	(%rdi), %r12
	movl	%eax, (%rdx)
	cltq
	salq	$4, %rax
	movdqu	(%rdi,%rax), %xmm0
	movups	%xmm0, (%rdi)
	movq	0(%rbp), %rbx
	movslq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rbp, %rdi
	xorl	%esi, %esi
	movq	%rax, 8(%rbx)
	call	heapify
	movq	%r12, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore_state
	call	free@PLT
	movq	$-1, %r12
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE20:
	.size	pq_pop, .-pq_pop
	.p2align 4
	.globl	pq_destroy
	.type	pq_destroy, @function
pq_destroy:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	8(%rdi), %rdi
	call	free@PLT
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE21:
	.size	pq_destroy, .-pq_destroy
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
