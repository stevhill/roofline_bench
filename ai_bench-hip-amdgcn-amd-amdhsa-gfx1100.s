	.amdgcn_target "amdgcn-amd-amdhsa--gfx1100"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z9ai_kernelP7__half2S0_ii ; -- Begin function _Z9ai_kernelP7__half2S0_ii
	.globl	_Z9ai_kernelP7__half2S0_ii
	.p2align	8
	.type	_Z9ai_kernelP7__half2S0_ii,@function
_Z9ai_kernelP7__half2S0_ii:             ; @_Z9ai_kernelP7__half2S0_ii
; %bb.0:
	s_clause 0x1
	s_load_b32 s6, s[0:1], 0x24
	s_load_b64 s[2:3], s[0:1], 0x10
	s_add_u32 s4, s0, 24
	s_addc_u32 s5, s1, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s11, s6, 0xffff
	s_mov_b32 s6, exec_lo
	v_mad_u64_u32 v[1:2], null, s15, s11, v[0:1]
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_gt_i32_e64 s2, v1
	s_cbranch_execz .LBB0_8
; %bb.1:                                ; %.lr.ph24
	s_load_b32 s12, s[4:5], 0x0
	s_load_b128 s[4:7], s[0:1], 0x0
	s_cmp_gt_i32 s3, 0
	s_cselect_b32 s1, -1, 0
	s_and_b32 s8, s3, 7
	s_cmp_gt_u32 s3, 7
	s_cselect_b32 s9, -1, 0
	s_and_b32 s3, s3, 0x7ffffff8
	s_cmp_lg_u32 s8, 0
	s_cselect_b32 s10, -1, 0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s11, s12, s11
	s_mov_b32 s12, 0
	s_set_inst_prefetch_distance 0x1
	s_branch .LBB0_3
	.p2align	6
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_add_nc_u32_e32 v1, s11, v1
	v_add_co_u32 v2, s0, s6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s7, v3, s0
	v_cmp_le_i32_e32 vcc_lo, s2, v1
	global_store_b32 v[2:3], v0, off
	s_or_b32 s12, vcc_lo, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s12
	s_cbranch_execz .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_co_u32 v4, vcc_lo, s4, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s5, v3, vcc_lo
	s_and_not1_b32 vcc_lo, exec_lo, s1
	global_load_b32 v0, v[4:5], off
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	;;#ASMEND
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_mov_b32 s0, s3
	s_cbranch_vccnz .LBB0_6
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_pk_mul_f16 v0, 0x3c08, v0 op_sel_hi:[0,1]
	s_add_i32 s0, s0, -8
	s_cmp_eq_u32 s0, 0
	s_cbranch_scc0 .LBB0_5
.LBB0_6:                                ; %._crit_edge.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB0_3 Depth=1
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_mov_b32 s0, s8
	s_cbranch_vccnz .LBB0_2
.LBB0_7:                                ; %.lr.ph.epil
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_pk_mul_f16 v0, 0x3c01, v0 op_sel_hi:[0,1]
	s_add_i32 s0, s0, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s0, 0
	s_cbranch_scc1 .LBB0_7
	s_branch .LBB0_2
.LBB0_8:                                ; %Flow46
	s_set_inst_prefetch_distance 0x2
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z9ai_kernelP7__half2S0_ii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 280
		.amdhsa_user_sgpr_count 15
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 6
		.amdhsa_next_free_sgpr 16
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 3
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z9ai_kernelP7__half2S0_ii, .Lfunc_end0-_Z9ai_kernelP7__half2S0_ii
                                        ; -- End function
	.set _Z9ai_kernelP7__half2S0_ii.num_vgpr, 6
	.set _Z9ai_kernelP7__half2S0_ii.num_agpr, 0
	.set _Z9ai_kernelP7__half2S0_ii.numbered_sgpr, 16
	.set _Z9ai_kernelP7__half2S0_ii.num_named_barrier, 0
	.set _Z9ai_kernelP7__half2S0_ii.private_seg_size, 0
	.set _Z9ai_kernelP7__half2S0_ii.uses_vcc, 1
	.set _Z9ai_kernelP7__half2S0_ii.uses_flat_scratch, 0
	.set _Z9ai_kernelP7__half2S0_ii.has_dyn_sized_stack, 0
	.set _Z9ai_kernelP7__half2S0_ii.has_recursion, 0
	.set _Z9ai_kernelP7__half2S0_ii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 340
; TotalNumSgprs: 18
; NumVgprs: 6
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 6
; Occupancy: 16
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 15
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.text
	.type	__hip_cuid_21fe0ea6f394f218,@object ; @__hip_cuid_21fe0ea6f394f218
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_21fe0ea6f394f218
__hip_cuid_21fe0ea6f394f218:
	.byte	0                               ; 0x0
	.size	__hip_cuid_21fe0ea6f394f218, 1

	.ident	"AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.1 26084 f58b06dce1f9c15707c5f808fd002e18c2accf7e)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_21fe0ea6f394f218
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .actual_access:  read_only
        .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  write_only
        .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         28
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         32
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         36
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         38
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         40
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         42
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         44
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         46
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         88
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 280
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z9ai_kernelP7__half2S0_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     18
    .sgpr_spill_count: 0
    .symbol:         _Z9ai_kernelP7__half2S0_ii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     6
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1100
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
