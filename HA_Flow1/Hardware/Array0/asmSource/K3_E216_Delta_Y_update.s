	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"K3_E216_Delta_Y_update.c"
	.def	MyKernel;
	.scl	2;
	.type	32;
	.endef
	.globl	MyKernel                        # -- Begin function MyKernel
	.p2align	4, 0x90
MyKernel:                               # @MyKernel
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\Users\\22395\\AppData\\Local\\Packages\\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\\LocalState\\CADA\\SoftwarePlatform\\Flow\\HA_Flow1\\Hardware\\Array0\\cSource\\K3_E216_Delta_Y_update.c" "45100F0236E0CAC547A5D657E6B020A5" 1
	.cv_loc	0 1 2 0                         # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:2:0
.seh_proc MyKernel
# %bb.0:
	sub	rsp, 456
	.seh_stackalloc 456
	.seh_endprologue
.Ltmp0:
	.cv_loc	0 1 3 0                         # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:3:0
	mov	dword ptr [rsp + 44], 13
	.cv_loc	0 1 4 0                         # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:4:0
	lea	rcx, [rsp + 368]
	xor	edx, edx
	mov	r8d, 80
	call	memset
	mov	dword ptr [rsp + 368], 3
	.cv_loc	0 1 6 0                         # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:6:0
	lea	rcx, [rsp + 288]
	xor	edx, edx
	mov	r8d, 80
	call	memset
	mov	dword ptr [rsp + 288], 5
	.cv_loc	0 1 7 0                         # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:7:0
	lea	rcx, [rsp + 208]
	xor	edx, edx
	mov	r8d, 80
	call	memset
	mov	dword ptr [rsp + 208], 5
	.cv_loc	0 1 8 0                         # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:8:0
	lea	rcx, [rsp + 128]
	xor	edx, edx
	mov	r8d, 80
	call	memset
	mov	dword ptr [rsp + 128], 5
	.cv_loc	0 1 10 0                        # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:10:0
	lea	rcx, [rsp + 48]
	xor	edx, edx
	mov	r8d, 80
	call	memset
	mov	dword ptr [rsp + 48], 5
	.cv_loc	0 1 12 0                        # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:12:0
	mov	eax, dword ptr [rsp + 372]
	mov	ecx, dword ptr [rsp + 292]
	add	ecx, dword ptr [rsp + 212]
	imul	eax, ecx
	imul	eax, dword ptr [rsp + 132]
	add	eax, dword ptr [rsp + 52]
	mov	dword ptr [rsp + 44], eax
	.cv_loc	0 1 14 0                        # C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c:14:0
	mov	eax, dword ptr [rsp + 44]
	add	rsp, 456
	ret
.Ltmp1:
.Lfunc_end0:
	.seh_endproc
                                        # -- End function
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp3-.Ltmp2                   # Subsection size
.Ltmp2:
	.short	.Ltmp5-.Ltmp4                   # Record length
.Ltmp4:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.asciz	"C:\\Users\\22395\\AppData\\Local\\Packages\\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\\LocalState\\CADA\\SoftwarePlatform\\Flow\\HA_Flow1\\Hardware\\Array0\\asmSource\\K3_E216_Delta_Y_update.s" # Object name
	.p2align	2, 0x0
.Ltmp5:
	.short	.Ltmp7-.Ltmp6                   # Record length
.Ltmp6:
	.short	4412                            # Record kind: S_COMPILE3
	.long	0                               # Flags and language
	.short	208                             # CPUType
	.short	16                              # Frontend version
	.short	0
	.short	4
	.short	0
	.short	17000                           # Backend version
	.short	0
	.short	0
	.short	0
	.asciz	"clang version 16.0.4"          # Null-terminated compiler version string
	.p2align	2, 0x0
.Ltmp7:
.Ltmp3:
	.p2align	2, 0x0
	.long	241                             # Symbol subsection for MyKernel
	.long	.Ltmp9-.Ltmp8                   # Subsection size
.Ltmp8:
	.short	.Ltmp11-.Ltmp10                 # Record length
.Ltmp10:
	.short	4423                            # Record kind: S_GPROC32_ID
	.long	0                               # PtrParent
	.long	0                               # PtrEnd
	.long	0                               # PtrNext
	.long	.Lfunc_end0-MyKernel            # Code size
	.long	0                               # Offset after prologue
	.long	0                               # Offset before epilogue
	.long	4098                            # Function type index
	.secrel32	MyKernel                # Function section relative address
	.secidx	MyKernel                        # Function section index
	.byte	0                               # Flags
	.asciz	"MyKernel"                      # Function name
	.p2align	2, 0x0
.Ltmp11:
	.short	.Ltmp13-.Ltmp12                 # Record length
.Ltmp12:
	.short	4114                            # Record kind: S_FRAMEPROC
	.long	456                             # FrameSize
	.long	0                               # Padding
	.long	0                               # Offset of padding
	.long	0                               # Bytes of callee saved registers
	.long	0                               # Exception handler offset
	.short	0                               # Exception handler section
	.long	90112                           # Flags (defines frame register)
	.p2align	2, 0x0
.Ltmp13:
	.short	.Ltmp15-.Ltmp14                 # Record length
.Ltmp14:
	.short	4414                            # Record kind: S_LOCAL
	.long	116                             # TypeIndex
	.short	0                               # Flags
	.asciz	"output"
	.p2align	2, 0x0
.Ltmp15:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 44
	.short	.Ltmp17-.Ltmp16                 # Record length
.Ltmp16:
	.short	4414                            # Record kind: S_LOCAL
	.long	4099                            # TypeIndex
	.short	0                               # Flags
	.asciz	"r_div_2"
	.p2align	2, 0x0
.Ltmp17:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 368
	.short	.Ltmp19-.Ltmp18                 # Record length
.Ltmp18:
	.short	4414                            # Record kind: S_LOCAL
	.long	4099                            # TypeIndex
	.short	0                               # Flags
	.asciz	"Wr"
	.p2align	2, 0x0
.Ltmp19:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 288
	.short	.Ltmp21-.Ltmp20                 # Record length
.Ltmp20:
	.short	4414                            # Record kind: S_LOCAL
	.long	4099                            # TypeIndex
	.short	0                               # Flags
	.asciz	"Wl"
	.p2align	2, 0x0
.Ltmp21:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 208
	.short	.Ltmp23-.Ltmp22                 # Record length
.Ltmp22:
	.short	4414                            # Record kind: S_LOCAL
	.long	4099                            # TypeIndex
	.short	0                               # Flags
	.asciz	"theta"
	.p2align	2, 0x0
.Ltmp23:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 128
	.short	.Ltmp25-.Ltmp24                 # Record length
.Ltmp24:
	.short	4414                            # Record kind: S_LOCAL
	.long	4099                            # TypeIndex
	.short	0                               # Flags
	.asciz	"y"
	.p2align	2, 0x0
.Ltmp25:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 48
	.short	2                               # Record length
	.short	4431                            # Record kind: S_PROC_ID_END
.Ltmp9:
	.p2align	2, 0x0
	.cv_linetable	0, MyKernel, .Lfunc_end0
	.cv_filechecksums                       # File index to string table offset subsection
	.cv_stringtable                         # String table
	.long	241
	.long	.Ltmp27-.Ltmp26                 # Subsection size
.Ltmp26:
	.short	.Ltmp29-.Ltmp28                 # Record length
.Ltmp28:
	.short	4428                            # Record kind: S_BUILDINFO
	.long	4103                            # LF_BUILDINFO index
	.p2align	2, 0x0
.Ltmp29:
.Ltmp27:
	.p2align	2, 0x0
	.section	.debug$T,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	# ArgList (0x1000)
	.short	0x6                             # Record length
	.short	0x1201                          # Record kind: LF_ARGLIST
	.long	0x0                             # NumArgs
	# Procedure (0x1001)
	.short	0xe                             # Record length
	.short	0x1008                          # Record kind: LF_PROCEDURE
	.long	0x74                            # ReturnType: int
	.byte	0x0                             # CallingConvention: NearC
	.byte	0x0                             # FunctionOptions
	.short	0x0                             # NumParameters
	.long	0x1000                          # ArgListType: ()
	# FuncId (0x1002)
	.short	0x16                            # Record length
	.short	0x1601                          # Record kind: LF_FUNC_ID
	.long	0x0                             # ParentScope
	.long	0x1001                          # FunctionType: int ()
	.asciz	"MyKernel"                      # Name
	.byte	243
	.byte	242
	.byte	241
	# Array (0x1003)
	.short	0xe                             # Record length
	.short	0x1503                          # Record kind: LF_ARRAY
	.long	0x74                            # ElementType: int
	.long	0x23                            # IndexType: unsigned __int64
	.short	0x50                            # SizeOf
	.byte	0                               # Name
	.byte	241
	# StringId (0x1004)
	.short	0x1a                            # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"C:\\Windows\\System32"         # StringData
	# StringId (0x1005)
	.short	0xc2                            # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"C:\\Users\\22395\\AppData\\Local\\Packages\\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\\LocalState\\CADA\\SoftwarePlatform\\Flow\\HA_Flow1\\Hardware\\Array0\\cSource\\K3_E216_Delta_Y_update.c" # StringData
	.byte	243
	.byte	242
	.byte	241
	# StringId (0x1006)
	.short	0xa                             # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.byte	0                               # StringData
	.byte	243
	.byte	242
	.byte	241
	# BuildInfo (0x1007)
	.short	0x1a                            # Record length
	.short	0x1603                          # Record kind: LF_BUILDINFO
	.short	0x5                             # NumArgs
	.long	0x1004                          # Argument: C:\Windows\System32
	.long	0x0                             # Argument
	.long	0x1005                          # Argument: C:\Users\22395\AppData\Local\Packages\115fabf6-83f3-40fb-b2ef-3defd3ddd2f2_kbtfgvzxh186t\LocalState\CADA\SoftwarePlatform\Flow\HA_Flow1\Hardware\Array0\cSource\K3_E216_Delta_Y_update.c
	.long	0x1006                          # Argument
	.long	0x0                             # Argument
	.byte	242
	.byte	241
