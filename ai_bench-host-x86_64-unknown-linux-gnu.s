	.file	"ai_bench.cpp"
	.text
	.globl	_Z24__device_stub__ai_kernelP7__half2S0_ii # -- Begin function _Z24__device_stub__ai_kernelP7__half2S0_ii
	.p2align	4
	.type	_Z24__device_stub__ai_kernelP7__half2S0_ii,@function
_Z24__device_stub__ai_kernelP7__half2S0_ii: # @_Z24__device_stub__ai_kernelP7__half2S0_ii
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edx, 12(%rsp)
	movl	%ecx, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	80(%rsp), %r9
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end0:
	.size	_Z24__device_stub__ai_kernelP7__half2S0_ii, .Lfunc_end0-_Z24__device_stub__ai_kernelP7__half2S0_ii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.long	1006648320                      # 0x3c003c00
	.long	1006648320                      # 0x3c003c00
	.long	1006648320                      # 0x3c003c00
	.long	1006648320                      # 0x3c003c00
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.quad	0x3f50624dd2f1a9fc              # double 0.001
.LCPI1_2:
	.quad	0x3f612e0be826d695              # double 0.0020971520000000001
.LCPI1_3:
	.quad	0x4020c6f7a0b5ed8e              # double 8.3886080000000014
.LCPI1_4:
	.quad	0x3fd0000000000000              # double 0.25
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	$1, %r14d
	cmpl	$2, %edi
	jl	.LBB1_1
# %bb.2:
	movl	%edi, %ebp
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__isoc23_strtol
	movq	%rax, %r12
	cmpl	$2, %ebp
	je	.LBB1_4
# %bb.3:
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__isoc23_strtol
	movq	%rax, %r14
	jmp	.LBB1_4
.LBB1_1:
	movl	$1, %r12d
.LBB1_4:                                # %.thread
	testl	%r12d, %r12d
	jle	.LBB1_6
# %bb.5:                                # %.thread
	testl	%r14d, %r14d
	jle	.LBB1_6
# %bb.7:                                # %vector.ph
	movl	$4194304, %edi                  # imm = 0x400000
	callq	malloc
	movq	%rax, %rbx
	movl	$4194304, %edi                  # imm = 0x400000
	callq	malloc
	movq	%rax, %r15
	movl	$28, %eax
	movaps	.LCPI1_0(%rip), %xmm0           # xmm0 = [1006648320,1006648320,1006648320,1006648320]
	.p2align	4
.LBB1_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rbx,%rax,4)
	movups	%xmm0, -96(%rbx,%rax,4)
	movups	%xmm0, -80(%rbx,%rax,4)
	movups	%xmm0, -64(%rbx,%rax,4)
	movups	%xmm0, -48(%rbx,%rax,4)
	movups	%xmm0, -32(%rbx,%rax,4)
	movups	%xmm0, -16(%rbx,%rax,4)
	movups	%xmm0, (%rbx,%rax,4)
	addq	$32, %rax
	cmpq	$1048604, %rax                  # imm = 0x10001C
	jne	.LBB1_8
# %bb.9:                                # %middle.block
	leaq	88(%rsp), %rdi
	movl	$4194304, %esi                  # imm = 0x400000
	callq	hipMalloc
	testl	%eax, %eax
	jne	.LBB1_10
# %bb.12:
	leaq	80(%rsp), %rdi
	movl	$4194304, %esi                  # imm = 0x400000
	callq	hipMalloc
	testl	%eax, %eax
	jne	.LBB1_13
# %bb.14:
	movq	88(%rsp), %rdi
	movl	$4194304, %edx                  # imm = 0x400000
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB1_15
# %bb.16:
	leaq	160(%rsp), %rdi
	callq	hipEventCreate
	testl	%eax, %eax
	jne	.LBB1_17
# %bb.18:
	leaq	144(%rsp), %rdi
	callq	hipEventCreate
	testl	%eax, %eax
	jne	.LBB1_19
# %bb.20:
	callq	hipDeviceSynchronize
	testl	%eax, %eax
	jne	.LBB1_33
# %bb.21:                               # %.preheader142
	movabsq	$4294967552, %r13               # imm = 0x100000100
	leaq	3840(%r13), %rbp
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_23
# %bb.22:
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	$1048576, 12(%rsp)              # imm = 0x100000
	movl	%r12d, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_23:
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_25
# %bb.24:
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	$1048576, 12(%rsp)              # imm = 0x100000
	movl	%r12d, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_25:
	movq	%r14, 152(%rsp)                 # 8-byte Spill
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_27
# %bb.26:
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	$1048576, 12(%rsp)              # imm = 0x100000
	movl	%r12d, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_27:
	movq	%r15, %r14
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_29
# %bb.28:
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	$1048576, 12(%rsp)              # imm = 0x100000
	movl	%r12d, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_29:
	movq	%rbp, %r15
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_31
# %bb.30:
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	$1048576, 12(%rsp)              # imm = 0x100000
	movl	%r12d, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_31:
	movq	%r13, %rbp
	movq	%r14, 192(%rsp)                 # 8-byte Spill
	callq	hipDeviceSynchronize
	testl	%eax, %eax
	jne	.LBB1_32
# %bb.34:                               # %.lr.ph
	xorps	%xmm0, %xmm0
	movss	%xmm0, 136(%rsp)                # 4-byte Spill
	leaq	96(%rsp), %r13
	movq	152(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r14d
	.p2align	4
.LBB1_35:                               # =>This Inner Loop Header: Depth=1
	movq	160(%rsp), %rdi
	xorl	%esi, %esi
	callq	hipEventRecord
	testl	%eax, %eax
	jne	.LBB1_36
# %bb.37:                               #   in Loop: Header=BB1_35 Depth=1
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%rbp, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_35 Depth=1
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	$1048576, 12(%rsp)              # imm = 0x100000
	movl	%r12d, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	movl	$_Z9ai_kernelP7__half2S0_ii, %edi
	movq	%r13, %r9
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_39:                               #   in Loop: Header=BB1_35 Depth=1
	movq	144(%rsp), %rdi
	xorl	%esi, %esi
	callq	hipEventRecord
	testl	%eax, %eax
	jne	.LBB1_40
# %bb.41:                               #   in Loop: Header=BB1_35 Depth=1
	movq	144(%rsp), %rdi
	callq	hipEventSynchronize
	testl	%eax, %eax
	jne	.LBB1_42
# %bb.43:                               #   in Loop: Header=BB1_35 Depth=1
	movl	$0, 96(%rsp)
	movq	160(%rsp), %rsi
	movq	144(%rsp), %rdx
	movq	%r13, %rdi
	callq	hipEventElapsedTime
	testl	%eax, %eax
	jne	.LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_35 Depth=1
	movss	136(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	96(%rsp), %xmm0
	movss	%xmm0, 136(%rsp)                # 4-byte Spill
	decl	%r14d
	jne	.LBB1_35
# %bb.46:                               # %._crit_edge
	movq	80(%rsp), %rsi
	movl	$4194304, %edx                  # imm = 0x400000
	movq	192(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdi
	movl	$2, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB1_47
# %bb.48:
	movq	152(%rsp), %r15                 # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r15d, %xmm0
	movss	136(%rsp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm3
	movsd	%xmm3, 168(%rsp)                # 8-byte Spill
	movsd	.LCPI1_1(%rip), %xmm0           # xmm0 = [1.0E-3,0.0E+0]
	mulsd	%xmm3, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r12d, %xmm1
	movsd	%xmm1, 136(%rsp)                # 8-byte Spill
	movsd	.LCPI1_2(%rip), %xmm2           # xmm2 = [2.0971520000000001E-3,0.0E+0]
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 176(%rsp)                # 8-byte Spill
	movsd	.LCPI1_3(%rip), %xmm0           # xmm0 = [8.3886080000000014E+0,0.0E+0]
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 184(%rsp)                # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.L.str.10, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.10, %edi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.11, %edi
	movsd	168(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$.L.str.12, %edi
	movsd	176(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$.L.str.12, %edi
	movsd	184(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movsd	136(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI1_4(%rip), %xmm0
	movl	$.L.str.13, %edi
	movb	$1, %al
	callq	printf
	movl	$10, %edi
	callq	putchar@PLT
	movq	88(%rsp), %rdi
	callq	hipFree
	movq	80(%rsp), %rdi
	callq	hipFree
	movq	%rbx, %rdi
	callq	free
	movq	%r14, %rdi
	callq	free
	jmp	.LBB1_49
.LBB1_6:
	movq	(%rbx), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %ebp
.LBB1_49:
	movl	%ebp, %eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_44:
	.cfi_def_cfa_offset 256
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$105, %edx
	jmp	.LBB1_11
.LBB1_42:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$102, %edx
	jmp	.LBB1_11
.LBB1_40:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$101, %edx
	jmp	.LBB1_11
.LBB1_36:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$97, %edx
.LBB1_11:
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB1_10:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$71, %edx
	jmp	.LBB1_11
.LBB1_13:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$72, %edx
	jmp	.LBB1_11
.LBB1_15:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$74, %edx
	jmp	.LBB1_11
.LBB1_17:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$83, %edx
	jmp	.LBB1_11
.LBB1_19:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$84, %edx
	jmp	.LBB1_11
.LBB1_33:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$86, %edx
	jmp	.LBB1_11
.LBB1_32:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$93, %edx
	jmp	.LBB1_11
.LBB1_47:
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$111, %edx
	jmp	.LBB1_11
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	__hip_gpubin_handle_21fe0ea6f394f218(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_2
# %bb.1:
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, %rdi
	movq	%rax, __hip_gpubin_handle_21fe0ea6f394f218(%rip)
.LBB2_2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z9ai_kernelP7__half2S0_ii, %esi
	movl	$.L__unnamed_1, %edx
	movl	$.L__unnamed_1, %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	movl	$__hip_module_dtor, %edi
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	jmp	atexit                          # TAILCALL
.Lfunc_end2:
	.size	__hip_module_ctor, .Lfunc_end2-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	movq	__hip_gpubin_handle_21fe0ea6f394f218(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB3_2
# %bb.1:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle_21fe0ea6f394f218(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB3_2:
	retq
.Lfunc_end3:
	.size	__hip_module_dtor, .Lfunc_end3-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_Z9ai_kernelP7__half2S0_ii,@object # @_Z9ai_kernelP7__half2S0_ii
	.section	.rodata,"a",@progbits
	.globl	_Z9ai_kernelP7__half2S0_ii
	.p2align	3, 0x0
_Z9ai_kernelP7__half2S0_ii:
	.quad	_Z24__device_stub__ai_kernelP7__half2S0_ii
	.size	_Z9ai_kernelP7__half2S0_ii, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: %s [R>=1] [repeats>=1]\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"HIP error: %s:%d '%s'\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ai_bench.cpp"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"R,"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Repeats,"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Time,"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"GFLOPs,"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Bandwidth (GB/s),"
	.size	.L.str.7, 18

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"AI (FLOPs/Byte)"
	.size	.L.str.8, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%d,"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%.3f,"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%.2f,"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%.2f"
	.size	.L.str.13, 5

	.type	.L__unnamed_1,@object           # @0
.L__unnamed_1:
	.asciz	"_Z9ai_kernelP7__half2S0_ii"
	.size	.L__unnamed_1, 27

	.type	.L__unnamed_2,@object           # @1
	.section	.hip_fatbin,"a",@progbits
	.p2align	12, 0x0
.L__unnamed_2:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\000\000\000\000host-x86_64-unknown-linux-gnu-\000\020\000\000\000\000\000\000\370\026\000\000\000\000\000\000 \000\000\000\000\000\000\000hipv4-amdgcn-amd-amdhsa--gfx1100\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\001@\004\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\270\022\000\000\000\000\000\000A\000\000\000@\0008\000\t\000@\000\021\000\017\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\370\001\000\000\000\000\000\000\370\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000\t\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\031\000\000\000\000\000\000\200\003\000\000\000\000\000\000\200\003\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\200\f\000\000\000\000\000\000\200,\000\000\000\000\000\000\200,\000\000\000\000\000\000p\000\000\000\000\000\000\000\200\003\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\360\f\000\000\000\000\000\000\360<\000\000\000\000\000\000\360<\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000\200\f\000\000\000\000\000\000\200,\000\000\000\000\000\000\200,\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000\200\f\000\000\000\000\000\000\200,\000\000\000\000\000\000\200,\000\000\000\000\000\000p\000\000\000\000\000\000\000\200\003\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000\200\005\000\000\000\000\000\000\200\005\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000k\005\000\000 \000\000\000AMDGPU\000\000\203\256amdhsa.kernels\221\336\000\022\245.args\334\000\021\205\256.actual_access\251read_only\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\205\256.actual_access\252write_only\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\004\253.value_kind\250by_value\203\247.offset\024\245.size\004\253.value_kind\250by_value\203\247.offset\030\245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset\034\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset \245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset$\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset&\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset(\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset*\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset,\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset.\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offset@\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offsetX\245.size\002\253.value_kind\260hidden_grid_dims\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001\030\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\272_Z9ai_kernelP7__half2S0_ii\273.private_segment_fixed_size\000\253.sgpr_count\022\261.sgpr_spill_count\000\247.symbol\275_Z9ai_kernelP7__half2S0_ii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\006\261.vgpr_spill_count\000\257.wavefront_size \271.workgroup_processor_mode\001\255amdhsa.target\272amdgcn-amd-amdhsa--gfx1100\256amdhsa.version\222\001\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\031\000\000\000\000\000\000\210\001\000\000\000\000\000\000\034\000\000\000\021\003\006\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000:\000\000\000\021\000\n\000\360<\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\032\000\000\000\320\001\000\000\000\000\000\004\001\000\000\000\306\201V\031D\322\300\350\311\225b\"\004\000\000\000\004\000\000\000\003\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000_Z9ai_kernelP7__half2S0_ii\000_Z9ai_kernelP7__half2S0_ii.kd\000__hip_cuid_21fe0ea6f394f218\000\000\000\000\000\000\000\000\000\000\000\030\001\000\000\000\000\000\000@\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\000\000\000\000\000\257\340\236\000\000\000\b\004\000\000\000\000\000\000\001\000\205\277\200\001\000\364$\000\000\370\200\000\004\364\020\000\000\370\000\230\004\200\001\200\005\202\007\374\211\277\006\377\013\213\377\377\000\000~\000\206\276\001|\376\326\017\026\000\004\001\000\207\277~\000\304\324\002\002\002\000O\000\245\277\002\003\000\364\000\000\000\370\000\001\b\364\000\000\000\370\003\200\002\277\301\200\001\230\003\207\b\213\003\207\b\277\301\200\t\230\003\377\003\213\370\377\377\177\b\200\007\277\301\200\n\230\007\374\211\277\f\013\013\226\200\000\214\276\001\000\204\277\032\000\240\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\013\002\002J\002\000\000\327\006\004\002\000\221\001\207\277\003| \325\007\006\002\000\002\002\206|\000\000j\334\002\000|\000j\f\f\214\t\000\207\277~\f~\221#\000\245\277\237\002\0044\221\000\207\277\002\000<\327\202\002\002\000\004j\000\327\004\004\002\000\001\000\207\277\005| \325\005\006\252\001~\001j\221\000\000R\334\004\000|\000\367\003\211\277\345\377\244\277~\tj\221\003\000\200\276\007\000\244\277\241\004\207\277\000@\020\314\377\000\002\020\b<\000\000\000\310\000\201\000\200\006\277\371\377\241\277~\nj\221\b\000\200\276\330\377\244\277\000@\020\314\377\000\002\020\001<\000\000\000\301\000\201\t\000\207\277\000\200\007\277\371\377\242\277\320\377\240\277\002\000\204\277\000\000\260\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\000\000\237\277\006\000\000\000\000\000\000\000\270\007\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000h\b\000\000\000\000\000\000\n\000\000\000\000\000\000\000V\000\000\000\000\000\000\000\365\376\377o\000\000\000\000\030\b\000\000\000\000\000\000\004\000\000\000\000\000\000\000@\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.1 26084 f58b06dce1f9c15707c5f808fd002e18c2accf7e)\000\000Linker: AMD LLD 22.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/llvm f58b06dce1f9c15707c5f808fd002e18c2accf7e)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\361\377\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000%\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000I\000\000\000\000\000\361\377\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000r\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\237\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\313\000\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\357\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\034\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000K\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000t\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\241\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\265\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\311\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\002\000\000\000\002\b\000\200,\000\000\000\000\000\000\000\000\000\000\000\000\000\000\335\001\000\000\022\003\007\000\000\031\000\000\000\000\000\000\210\001\000\000\000\000\000\000\370\001\000\000\021\003\006\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000\026\002\000\000\021\000\n\000\360<\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.relro_padding\000.bss\000.AMDGPU.csdata\000.AMDGPU.gpr_maximums\000.comment\000.symtab\000.shstrtab\000.strtab\000\000_Z9ai_kernelP7__half2S0_ii.num_vgpr\000_Z9ai_kernelP7__half2S0_ii.num_agpr\000_Z9ai_kernelP7__half2S0_ii.numbered_sgpr\000_Z9ai_kernelP7__half2S0_ii.num_named_barrier\000_Z9ai_kernelP7__half2S0_ii.private_seg_size\000_Z9ai_kernelP7__half2S0_ii.uses_vcc\000_Z9ai_kernelP7__half2S0_ii.uses_flat_scratch\000_Z9ai_kernelP7__half2S0_ii.has_dyn_sized_stack\000_Z9ai_kernelP7__half2S0_ii.has_recursion\000_Z9ai_kernelP7__half2S0_ii.has_indirect_call\000amdgpu.max_num_vgpr\000amdgpu.max_num_agpr\000amdgpu.max_num_sgpr\000_Z9ai_kernelP7__half2S0_ii\000_Z9ai_kernelP7__half2S0_ii.kd\000__hip_cuid_21fe0ea6f394f218\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000\200\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\000\270\007\000\000\000\000\000\000\270\007\000\000\000\000\000\000`\000\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000\030\b\000\000\000\000\000\000\030\b\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000@\b\000\000\000\000\000\000@\b\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\000h\b\000\000\000\000\000\000h\b\000\000\000\000\000\000V\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\300\b\000\000\000\000\000\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\t\000\000\000\000\000\000\200\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000\200,\000\000\000\000\000\000\200\f\000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\360,\000\000\000\000\000\000\360\f\000\000\000\000\000\000\020\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\360<\000\000\000\000\000\000\360\f\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\f\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000a\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\f\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000v\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\f\000\000\000\000\000\0009\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\177\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\016\000\000\000\000\000\000\260\001\000\000\000\000\000\000\020\000\000\000\017\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\207\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\340\017\000\000\000\000\000\000\231\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\221\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000y\020\000\000\000\000\000\000;\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_2, 9976

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"a",@progbits
	.p2align	3, 0x0
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	.L__unnamed_2
	.quad	0
	.size	__hip_fatbin_wrapper, 24

	.type	__hip_gpubin_handle_21fe0ea6f394f218,@object # @__hip_gpubin_handle_21fe0ea6f394f218
	.local	__hip_gpubin_handle_21fe0ea6f394f218
	.comm	__hip_gpubin_handle_21fe0ea6f394f218,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	__hip_module_ctor
	.type	__hip_cuid_21fe0ea6f394f218,@object # @__hip_cuid_21fe0ea6f394f218
	.bss
	.globl	__hip_cuid_21fe0ea6f394f218
__hip_cuid_21fe0ea6f394f218:
	.byte	0                               # 0x0
	.size	__hip_cuid_21fe0ea6f394f218, 1

	.ident	"AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.1 26084 f58b06dce1f9c15707c5f808fd002e18c2accf7e)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z24__device_stub__ai_kernelP7__half2S0_ii
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _Z9ai_kernelP7__half2S0_ii
	.addrsig_sym .L__unnamed_2
	.addrsig_sym __hip_fatbin_wrapper
	.addrsig_sym __hip_cuid_21fe0ea6f394f218
