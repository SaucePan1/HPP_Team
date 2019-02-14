	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_0:
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	cmpl	$5, -8(%rbp)
	je	LBB0_2
## BB#1:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -120(%rbp)        ## 4-byte Spill
LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_atoi
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	_atoi
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	_atof
	movsd	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	_atoi
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	%eax, -28(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movslq	-20(%rbp), %rdi
	shlq	$3, %rdi
	callq	_malloc
	movq	%rax, -72(%rbp)
	movl	$0, -32(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_6
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	-72(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_6:
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -80(%rbp)
	movl	$0, -32(%rbp)
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_10
## BB#8:                                ##   in Loop: Header=BB0_7 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	-80(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
## BB#9:                                ##   in Loop: Header=BB0_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_7
LBB0_10:
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -88(%rbp)
	movl	$0, -32(%rbp)
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_14
## BB#12:                               ##   in Loop: Header=BB0_11 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	-88(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
## BB#13:                               ##   in Loop: Header=BB0_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_11
LBB0_14:
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -96(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	leaq	L_.str.2(%rip), %rsi
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdi
	callq	_fopen
	movq	%rax, -112(%rbp)
	movl	$0, -32(%rbp)
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_18
## BB#16:                               ##   in Loop: Header=BB0_15 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movslq	-32(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -128(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	callq	_fread
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	-72(%rbp), %rcx
	movslq	-32(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	addq	$8, %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -136(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-136(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	callq	_fread
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	-96(%rbp), %rcx
	movslq	-32(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -152(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-152(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_fread
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movslq	-32(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -168(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	callq	_fread
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movslq	-32(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	addq	$8, %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -184(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-184(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	callq	_fread
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	-104(%rbp), %rcx
	movslq	-32(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -200(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-200(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_fread
	movq	%rax, -216(%rbp)        ## 8-byte Spill
## BB#17:                               ##   in Loop: Header=BB0_15 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_15
LBB0_18:
	movl	$0, -32(%rbp)
LBB0_19:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_22
## BB#20:                               ##   in Loop: Header=BB0_19 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movq	-72(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movq	-72(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movsd	8(%rcx), %xmm0          ## xmm0 = mem[0],zero
	movl	%eax, -220(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movq	-96(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movsd	(%rcx,%rdx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	%eax, -224(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movq	-80(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movl	%eax, -228(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movq	-80(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movsd	8(%rcx), %xmm0          ## xmm0 = mem[0],zero
	movl	%eax, -232(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movq	-104(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movsd	(%rcx,%rdx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	%eax, -236(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	movl	%eax, -240(%rbp)        ## 4-byte Spill
## BB#21:                               ##   in Loop: Header=BB0_19 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_19
LBB0_22:
	movl	$0, -36(%rbp)
LBB0_23:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_25 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB0_30
## BB#24:                               ##   in Loop: Header=BB0_23 Depth=1
	movl	$0, -32(%rbp)
LBB0_25:                                ##   Parent Loop BB0_23 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_28
## BB#26:                               ##   in Loop: Header=BB0_25 Depth=2
	movl	-20(%rbp), %edi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	-32(%rbp), %r8d
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        ## xmm1 = mem[0],zero
	callq	_update_particle
## BB#27:                               ##   in Loop: Header=BB0_25 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_25
LBB0_28:                                ##   in Loop: Header=BB0_23 Depth=1
	jmp	LBB0_29
LBB0_29:                                ##   in Loop: Header=BB0_23 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_23
LBB0_30:
	xorl	%eax, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_update_particle
	.p2align	4, 0x90
_update_particle:                       ## @update_particle
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movslq	-4(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-64(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_1
LBB1_4:
	movl	$0, -36(%rbp)
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB1_8
## BB#6:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	-4(%rbp), %r8d
	callq	_get_a
## BB#7:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_5
LBB1_8:
	movl	$0, -36(%rbp)
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB1_12
## BB#10:                               ##   in Loop: Header=BB1_9 Depth=1
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	mulsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	mulsd	8(%rax), %xmm0
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	mulsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	mulsd	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
## BB#11:                               ##   in Loop: Header=BB1_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_9
LBB1_12:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_get_a
	.p2align	4, 0x90
_get_a:                                 ## @get_a
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	$0, -76(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB2_4
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	8(%rax), %xmm1          ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	8(%rax), %xmm1
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	8(%rax), %xmm2          ## xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	8(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        ## xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        ## xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	8(%rax), %xmm1          ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	8(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB2_1
LBB2_4:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB2_8
## BB#6:                                ##   in Loop: Header=BB2_5 Depth=1
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	8(%rax), %xmm1          ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	8(%rax), %xmm1
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	8(%rax), %xmm2          ## xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	8(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtss2sd	_eps(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        ## xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        ## xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	8(%rax), %xmm1          ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	subsd	8(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
## BB#7:                                ##   in Loop: Header=BB2_5 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB2_5
LBB2_8:
	movabsq	$-9223372036854775808, %rax ## imm = 0x8000000000000000
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	mulsd	-64(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	%xmm0, 8(%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_eps                    ## @eps
	.p2align	2
_eps:
	.long	981668463               ## float 0.00100000005

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Invalid number of arguments."

L_.str.1:                               ## @.str.1
	.asciz	"The arguments are: N filename nsteps delta_t graphics \n"

L_.str.2:                               ## @.str.2
	.asciz	"rb"

L_.str.3:                               ## @.str.3
	.asciz	"%f\n"


.subsections_via_symbols
