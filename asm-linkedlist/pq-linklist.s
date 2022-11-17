	.file	"pq-linklist.c"
	.text
	.p2align 4
	.globl	pq_create
	.type	pq_create, @function
pq_create:
.LFB16:
	.cfi_startproc
	endbr64
	movl	$24, %edi
	jmp	malloc@PLT
	.cfi_endproc
.LFE16:
	.size	pq_create, .-pq_create
	.p2align 4
	.globl	pq_push
	.type	pq_push, @function
pq_push:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rbx
	movl	$24, %edi
	movsd	%xmm0, 8(%rsp)
	call	malloc@PLT
	movsd	8(%rsp), %xmm0
	movq	%r12, (%rax)
	movsd	%xmm0, 8(%rax)
	movsd	8(%rbx), %xmm1
	movq	$0, 16(%rax)
	comisd	%xmm0, %xmm1
	jbe	.L4
	movq	%rbx, 16(%rax)
	movq	%rax, 0(%rbp)
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
.L14:
	.cfi_restore_state
	comisd	8(%rbx), %xmm0
	jbe	.L7
.L4:
	movq	%rbx, %rdx
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L14
.L7:
	movq	%rbx, 16(%rax)
	movq	%rax, 16(%rdx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	pq_push, .-pq_push
	.p2align 4
	.globl	pq_pop
	.type	pq_pop, @function
pq_pop:
.LFB18:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	movq	16(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	(%rax), %rax
	ret
	.cfi_endproc
.LFE18:
	.size	pq_pop, .-pq_pop
	.p2align 4
	.globl	pq_destroy
	.type	pq_destroy, @function
pq_destroy:
.LFB19:
	.cfi_startproc
	endbr64
	jmp	free@PLT
	.cfi_endproc
.LFE19:
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
