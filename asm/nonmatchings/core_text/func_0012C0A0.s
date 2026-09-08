.align 3
nonmatching func_0012C0A0, 0x15C

glabel func_0012C0A0
    /* 2D020 0012C0A0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 2D024 0012C0A4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2D028 0012C0A8 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2D02C 0012C0AC 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2D030 0012C0B0 2D980000 */  daddu      $s3, $zero, $zero
    /* 2D034 0012C0B4 5000BFFF */  sd         $ra, 0x50($sp)
    /* 2D038 0012C0B8 2D908000 */  daddu      $s2, $a0, $zero
    /* 2D03C 0012C0BC 4000B4FF */  sd         $s4, 0x40($sp)
    /* 2D040 0012C0C0 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2D044 0012C0C4 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D048 0012C0C8 4000508E */  lw         $s0, 0x40($s2)
    /* 2D04C 0012C0CC 0400C210 */  beq        $a2, $v0, .L0012C0E0
    /* 2D050 0012C0D0 200100AE */   sw        $zero, 0x120($s0)
    /* 2D054 0012C0D4 2A10A600 */  slt        $v0, $a1, $a2
    /* 2D058 0012C0D8 03004050 */  beql       $v0, $zero, .L0012C0E8
    /* 2D05C 0012C0DC 0800028E */   lw        $v0, 0x8($s0)
.align 2
  .L0012C0E0:
    /* 2D060 0012C0E0 01001324 */  addiu      $s3, $zero, 0x1
    /* 2D064 0012C0E4 0800028E */  lw         $v0, 0x8($s0)
.align 2
  .L0012C0E8:
    /* 2D068 0012C0E8 04004014 */  bnez       $v0, .L0012C0FC
    /* 2D06C 0012C0EC 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D070 0012C0F0 080040AE */  sw         $zero, 0x8($s2)
    /* 2D074 0012C0F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D078 0012C0F8 080002AE */  sw         $v0, 0x8($s0)
.align 2
  .L0012C0FC:
    /* 2D07C 0012C0FC A4A5040C */  jal        func_00129690
    /* 2D080 0012C100 2D280000 */   daddu     $a1, $zero, $zero
    /* 2D084 0012C104 06004010 */  beqz       $v0, .L0012C120
    /* 2D088 0012C108 01001124 */   addiu     $s1, $zero, 0x1
    /* 2D08C 0012C10C 05006012 */  beqz       $s3, .L0012C124
    /* 2D090 0012C110 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D094 0012C114 4CA5040C */  jal        func_00129530
    /* 2D098 0012C118 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D09C 0012C11C 01001124 */  addiu      $s1, $zero, 0x1
.align 2
  .L0012C120:
    /* 2D0A0 0012C120 2D200002 */  daddu      $a0, $s0, $zero
.align 2
  .L0012C124:
    /* 2D0A4 0012C124 24A3040C */  jal        func_00128C90
    /* 2D0A8 0012C128 200111AE */   sw        $s1, 0x120($s0)
    /* 2D0AC 0012C12C 06004054 */  bnel       $v0, $zero, .L0012C148
    /* 2D0B0 0012C130 D400028E */   lw        $v0, 0xD4($s0)
    /* 2D0B4 0012C134 80B0040C */  jal        func_0012C200
    /* 2D0B8 0012C138 2D204002 */   daddu     $a0, $s2, $zero
    /* 2D0BC 0012C13C 000011AE */  sw         $s1, 0x0($s0)
    /* 2D0C0 0012C140 26000010 */  b          .L0012C1DC
    /* 2D0C4 0012C144 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0012C148:
    /* 2D0C8 0012C148 02000324 */  addiu      $v1, $zero, 0x2
    /* 2D0CC 0012C14C 7401048E */  lw         $a0, 0x174($s0)
    /* 2D0D0 0012C150 01004238 */  xori       $v0, $v0, 0x1
    /* 2D0D4 0012C154 0B182202 */  movn       $v1, $s1, $v0
    /* 2D0D8 0012C158 20008314 */  bne        $a0, $v1, .L0012C1DC
    /* 2D0DC 0012C15C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2D0E0 0012C160 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D0E4 0012C164 A4A5040C */  jal        func_00129690
    /* 2D0E8 0012C168 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D0EC 0012C16C 2D180000 */  daddu      $v1, $zero, $zero
    /* 2D0F0 0012C170 0B182202 */  movn       $v1, $s1, $v0
    /* 2D0F4 0012C174 06006010 */  beqz       $v1, .L0012C190
    /* 2D0F8 0012C178 2DA00000 */   daddu     $s4, $zero, $zero
    /* 2D0FC 0012C17C 05006052 */  beql       $s3, $zero, .L0012C194
    /* 2D100 0012C180 1801058E */   lw        $a1, 0x118($s0)
    /* 2D104 0012C184 4CA5040C */  jal        func_00129530
    /* 2D108 0012C188 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D10C 0012C18C 0BA02202 */  movn       $s4, $s1, $v0
.align 2
  .L0012C190:
    /* 2D110 0012C190 1801058E */  lw         $a1, 0x118($s0)
.align 2
  .L0012C194:
    /* 2D114 0012C194 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D118 0012C198 80A5040C */  jal        func_00129600
    /* 2D11C 0012C19C 0400068E */   lw        $a2, 0x4($s0)
    /* 2D120 0012C1A0 1801028E */  lw         $v0, 0x118($s0)
    /* 2D124 0012C1A4 AC00038E */  lw         $v1, 0xAC($s0)
    /* 2D128 0012C1A8 200100AE */  sw         $zero, 0x120($s0)
    /* 2D12C 0012C1AC 23104300 */  subu       $v0, $v0, $v1
    /* 2D130 0012C1B0 080042AE */  sw         $v0, 0x8($s2)
    /* 2D134 0012C1B4 1801038E */  lw         $v1, 0x118($s0)
    /* 2D138 0012C1B8 0400028E */  lw         $v0, 0x4($s0)
    /* 2D13C 0012C1BC 01006324 */  addiu      $v1, $v1, 0x1
    /* 2D140 0012C1C0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D144 0012C1C4 180103AE */  sw         $v1, 0x118($s0)
    /* 2D148 0012C1C8 03006016 */  bnez       $s3, .L0012C1D8
    /* 2D14C 0012C1CC 040002AE */   sw        $v0, 0x4($s0)
    /* 2D150 0012C1D0 32AF040C */  jal        func_0012BCC8
    /* 2D154 0012C1D4 2D204002 */   daddu     $a0, $s2, $zero
.align 2
  .L0012C1D8:
    /* 2D158 0012C1D8 2D108002 */  daddu      $v0, $s4, $zero
.align 2
  .L0012C1DC:
    /* 2D15C 0012C1DC 5000BFDF */  ld         $ra, 0x50($sp)
    /* 2D160 0012C1E0 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2D164 0012C1E4 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2D168 0012C1E8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2D16C 0012C1EC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2D170 0012C1F0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2D174 0012C1F4 0800E003 */  jr         $ra
    /* 2D178 0012C1F8 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0012C0A0
    /* 2D17C 0012C1FC 00000000 */  nop
